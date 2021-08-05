--CREATE DATABASE PORTFOLIOPROJECT
USE PORTFOLIOPROJECT

/*
Cleaning Data in SQL Queries
*/

SELECT*FROM NASHVILLEHOUSING

--STANDARDIZE DATE FORMAT
SELECT SALEDATE FROM NASHVILLEHOUSING
SELECT SALEDATE, CONVERT(DATE, SALEDATE) FROM NashvilleHousing

ALTER TABLE NashvilleHousing
ADD SaleDateConverted Date

UPDATE NashvilleHousing
SET SaleDateConverted = CONVERT(DATE, SALEDATE)

ALTER TABLE NashvilleHousing
DROP COLUMN SaleDate

 --------------------------------------------------------------------------------------------------------------------------
 -- Populate Property Address data
--SELECT ParcelID, COUNT(ParcelID) FROM NashvilleHousing
--GROUP BY ParcelID
--HAVING COUNT(ParcelID)>1

--SELECT PropertyAddress, SUBSTRING(OwnerAddress,0,LEN(OwnerAddress)-3) FROM NashvilleHousing
--WHERE PropertyAddress <> SUBSTRING(OwnerAddress,0,LEN(OwnerAddress)-3)
 
SELECT a.ParcelID, a.PropertyAddress, a.[UniqueID ],b.ParcelID, b.PropertyAddress, b.[UniqueID ], ISNULL(a.PropertyAddress, b.PropertyAddress) 
FROM NASHVILLEHOUSING a
JOIN NashvilleHousing b
ON a.ParcelID = b.ParcelID AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress) 
FROM NashvilleHousing a
JOIN NashvilleHousing b
ON a.ParcelID = b.ParcelID AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL

-- BREAKING OUT ADDRESS INTO INDIVIDUAL COLUMNS (ADDRESS, CITY AND STATE)
SELECT
TRIM(SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1)) AS ADDRESS,
TRIM(SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress)+2, LEN(PropertyAddress))) AS CITY,
TRIM(SUBSTRING(OwnerAddress, LEN(OwnerAddress)-1,2)) AS STATE
FROM NashvilleHousing

ALTER TABLE NashvilleHousing
ADD PropertySplitAddress NVARCHAR(255)

UPDATE NashvilleHousing
SET PropertySplitAddress = TRIM(SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress)-1))


ALTER TABLE NashvilleHousing
ADD PropertySplitCity NVARCHAR(255)

UPDATE NashvilleHousing
SET PropertySplitCity = TRIM(SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress)+2, LEN(PropertyAddress)))


ALTER TABLE NashvilleHousing
ADD PropertySplitState NVARCHAR(255)

UPDATE NashvilleHousing
SET PropertySplitState = TRIM(SUBSTRING(OwnerAddress, LEN(OwnerAddress)-1,2))

SELECT*FROM NashvilleHousing
WHERE PropertySplitState is not null

-- CHANGE Y AND N TO YES AND NO IN "SOLD AS VACANT" FIELD
SELECT Distinct(SoldAsVacant), COUNT(SoldAsVacant) from NashvilleHousing
GROUP BY SoldAsVacant

UPDATE NashvilleHousing
SET SoldAsVacant = 'Yes'
WHERE SoldAsVacant = 'Y'

UPDATE NashvilleHousing
SET SoldAsVacant = 'No'
WHERE SoldAsVacant = 'N'

--REMOVE DUPLICATES

WITH RowNumCTE AS(
SELECT *,
		ROW_NUMBER() OVER (
		PARTITION BY ParcelID,
					PropertyAddress,
					SalePrice,
					SaleDateConverted,
					LegalReference
					ORDER BY UniqueID) row_num
FROM NashvilleHousing)

--DELETE FROM RowNumCTE
--WHERE row_num>1
--ORDER BY ParcelID

--Checking if there are more duplicates
SELECT * FROM RowNumCTE
WHERE row_num>1
ORDER BY ParcelID


--DELETE UNUSED COLUMNS
ALTER TABLE NashvilleHousing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress






















































