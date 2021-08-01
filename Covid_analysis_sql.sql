CREATE DATABASE CovidProject

USE CovidProject


-- Replace empty cells with NULL values for the entire table
SELECT 'UPDATE CovidVaccinations SET ' + name + ' = NULL WHERE ' + name + ' = '''';'
FROM syscolumns
WHERE id = object_id('CovidVaccinations')
  AND isnullable = 1;

--UPDATE CovidDeaths SET iso_code = NULL WHERE iso_code = '';
--UPDATE CovidDeaths SET continent = NULL WHERE continent = '';
--UPDATE CovidDeaths SET location = NULL WHERE location = '';
--UPDATE CovidDeaths SET date = NULL WHERE date = '';
--UPDATE CovidDeaths SET population = NULL WHERE population = '';
--UPDATE CovidDeaths SET total_cases = NULL WHERE total_cases = '';
--UPDATE CovidDeaths SET new_cases = NULL WHERE new_cases = '';
--UPDATE CovidDeaths SET new_cases_smoothed = NULL WHERE new_cases_smoothed = '';
--UPDATE CovidDeaths SET total_deaths = NULL WHERE total_deaths = '';
--UPDATE CovidDeaths SET new_deaths = NULL WHERE new_deaths = '';
--UPDATE CovidDeaths SET new_deaths_smoothed = NULL WHERE new_deaths_smoothed = '';
--UPDATE CovidDeaths SET total_cases_per_million = NULL WHERE total_cases_per_million = '';
--UPDATE CovidDeaths SET new_cases_per_million = NULL WHERE new_cases_per_million = '';
--UPDATE CovidDeaths SET new_cases_smoothed_per_million = NULL WHERE new_cases_smoothed_per_million = '';
--UPDATE CovidDeaths SET total_deaths_per_million = NULL WHERE total_deaths_per_million = '';
--UPDATE CovidDeaths SET new_deaths_per_million = NULL WHERE new_deaths_per_million = '';
--UPDATE CovidDeaths SET new_deaths_smoothed_per_million = NULL WHERE new_deaths_smoothed_per_million = '';
--UPDATE CovidDeaths SET reproduction_rate = NULL WHERE reproduction_rate = '';
--UPDATE CovidDeaths SET icu_patients = NULL WHERE icu_patients = '';
--UPDATE CovidDeaths SET icu_patients_per_million = NULL WHERE icu_patients_per_million = '';
--UPDATE CovidDeaths SET hosp_patients = NULL WHERE hosp_patients = '';
--UPDATE CovidDeaths SET hosp_patients_per_million = NULL WHERE hosp_patients_per_million = '';
--UPDATE CovidDeaths SET weekly_icu_admissions = NULL WHERE weekly_icu_admissions = '';
--UPDATE CovidDeaths SET weekly_icu_admissions_per_million = NULL WHERE weekly_icu_admissions_per_million = '';
--UPDATE CovidDeaths SET weekly_hosp_admissions = NULL WHERE weekly_hosp_admissions = '';
--UPDATE CovidDeaths SET weekly_hosp_admissions_per_million = NULL WHERE weekly_hosp_admissions_per_million = '';


--UPDATE CovidVaccinations SET iso_code = NULL WHERE iso_code = '';
--UPDATE CovidVaccinations SET continent = NULL WHERE continent = '';
--UPDATE CovidVaccinations SET location = NULL WHERE location = '';
--UPDATE CovidVaccinations SET date = NULL WHERE date = '';
--UPDATE CovidVaccinations SET new_tests = NULL WHERE new_tests = '';
--UPDATE CovidVaccinations SET total_tests = NULL WHERE total_tests = '';
--UPDATE CovidVaccinations SET total_tests_per_thousand = NULL WHERE total_tests_per_thousand = '';
--UPDATE CovidVaccinations SET new_tests_per_thousand = NULL WHERE new_tests_per_thousand = '';
--UPDATE CovidVaccinations SET new_tests_smoothed = NULL WHERE new_tests_smoothed = '';
--UPDATE CovidVaccinations SET new_tests_smoothed_per_thousand = NULL WHERE new_tests_smoothed_per_thousand = '';
--UPDATE CovidVaccinations SET positive_rate = NULL WHERE positive_rate = '';
--UPDATE CovidVaccinations SET tests_per_case = NULL WHERE tests_per_case = '';
--UPDATE CovidVaccinations SET tests_units = NULL WHERE tests_units = '';
--UPDATE CovidVaccinations SET total_vaccinations = NULL WHERE total_vaccinations = '';
--UPDATE CovidVaccinations SET people_vaccinated = NULL WHERE people_vaccinated = '';
--UPDATE CovidVaccinations SET people_fully_vaccinated = NULL WHERE people_fully_vaccinated = '';
--UPDATE CovidVaccinations SET new_vaccinations = NULL WHERE new_vaccinations = '';
--UPDATE CovidVaccinations SET new_vaccinations_smoothed = NULL WHERE new_vaccinations_smoothed = '';
--UPDATE CovidVaccinations SET total_vaccinations_per_hundred = NULL WHERE total_vaccinations_per_hundred = '';
--UPDATE CovidVaccinations SET people_vaccinated_per_hundred = NULL WHERE people_vaccinated_per_hundred = '';
--UPDATE CovidVaccinations SET people_fully_vaccinated_per_hundred = NULL WHERE people_fully_vaccinated_per_hundred = '';
--UPDATE CovidVaccinations SET new_vaccinations_smoothed_per_million = NULL WHERE new_vaccinations_smoothed_per_million = '';
--UPDATE CovidVaccinations SET stringency_index = NULL WHERE stringency_index = '';
--UPDATE CovidVaccinations SET population_density = NULL WHERE population_density = '';
--UPDATE CovidVaccinations SET median_age = NULL WHERE median_age = '';
--UPDATE CovidVaccinations SET aged_65_older = NULL WHERE aged_65_older = '';
--UPDATE CovidVaccinations SET aged_70_older = NULL WHERE aged_70_older = '';
--UPDATE CovidVaccinations SET gdp_per_capita = NULL WHERE gdp_per_capita = '';
--UPDATE CovidVaccinations SET extreme_poverty = NULL WHERE extreme_poverty = '';
--UPDATE CovidVaccinations SET cardiovasc_death_rate = NULL WHERE cardiovasc_death_rate = '';
--UPDATE CovidVaccinations SET diabetes_prevalence = NULL WHERE diabetes_prevalence = '';
--UPDATE CovidVaccinations SET female_smokers = NULL WHERE female_smokers = '';
--UPDATE CovidVaccinations SET male_smokers = NULL WHERE male_smokers = '';
--UPDATE CovidVaccinations SET handwashing_facilities = NULL WHERE handwashing_facilities = '';
--UPDATE CovidVaccinations SET hospital_beds_per_thousand = NULL WHERE hospital_beds_per_thousand = '';
--UPDATE CovidVaccinations SET life_expectancy = NULL WHERE life_expectancy = '';
--UPDATE CovidVaccinations SET human_development_index = NULL WHERE human_development_index = '';
--UPDATE CovidVaccinations SET excess_mortality = NULL WHERE excess_mortality = '';

select*from CovidDeaths
select*from CovidVaccinations

--Check columns data types
sp_help CovidDeaths
sp_help CovidVaccinations

--Change data type from varchar to float

SELECT 'ALTER TABLE CovidDeaths ALTER COLUMN ' + name + ' float NULL'
FROM syscolumns
WHERE id = object_id('CovidDeaths')

--ALTER TABLE CovidDeaths ALTER COLUMN date datetime NULL
--ALTER TABLE CovidDeaths ALTER COLUMN hosp_patients float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN hosp_patients_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN icu_patients float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN icu_patients_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_cases float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_cases_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_cases_smoothed float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_cases_smoothed_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_deaths float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_deaths_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_deaths_smoothed float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN new_deaths_smoothed_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN population float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN reproduction_rate float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN total_cases float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN total_cases_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN total_deaths float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN total_deaths_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN weekly_hosp_admissions float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN weekly_hosp_admissions_per_million float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN weekly_icu_admissions float NULL
--ALTER TABLE CovidDeaths ALTER COLUMN weekly_icu_admissions_per_million float NULL

SELECT 'ALTER TABLE CovidVaccinations ALTER COLUMN ' + name + ' float NULL'
FROM syscolumns
WHERE id = object_id('CovidVaccinations')

--ALTER TABLE CovidVaccinations ALTER COLUMN aged_65_older float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN aged_70_older float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN cardiovasc_death_rate float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN date datetime NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN diabetes_prevalence float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN excess_mortality float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN extreme_poverty float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN female_smokers float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN gdp_per_capita float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN handwashing_facilities float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN hospital_beds_per_thousand float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN human_development_index float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN life_expectancy float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN male_smokers float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN median_age float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_tests float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_tests_per_thousand float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_tests_smoothed float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_tests_smoothed_per_thousand float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_vaccinations float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_vaccinations_smoothed float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN new_vaccinations_smoothed_per_million float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN people_fully_vaccinated float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN people_fully_vaccinated_per_hundred float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN people_vaccinated float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN people_vaccinated_per_hundred float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN population_density float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN positive_rate float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN stringency_index float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN tests_per_case float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN total_tests float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN total_tests_per_thousand float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN total_vaccinations float NULL
--ALTER TABLE CovidVaccinations ALTER COLUMN total_vaccinations_per_hundred float NULL



--Select data that we are going to be using
select Location, date, total_cases, new_cases, total_deaths, population
from CovidDeaths

--Looking at total cases vs total deaths
select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from CovidDeaths
where location='Peru'

--Looking at total cases vs population
select Location, date, total_cases, population, (total_cases/population)*1000000 as DeathPerMillions
from CovidDeaths 
where location='Peru' and continent is not NULL

--Looking at countries with highest infection rate compared to population
select Location, date, total_cases, population, (total_cases/population)*1000000 as CasesPerMillions
from CovidDeaths
WHERE date='20210730' and continent is not NULL
order by CasesPerMillions DESC

--Showing countries with highest death count rate per population
select Location, date, total_deaths, population, (total_deaths/population)*1000000 as DeathPerMillions
from CovidDeaths
WHERE date='20210730' and continent is not NULL
order by DeathPerMillions DESC

--The same process but now for continent
select Location, date, total_deaths, population, (total_deaths/population)*1000000 as DeathPerMillions
from CovidDeaths
WHERE date='20210730' and continent is NULL and location NOT IN ('European Union', 'World', 'International')
order by DeathPerMillions DESC


-- GLOBAL NUMBERS
SELECT date, sum(new_cases) as GlobalCases, sum(new_deaths) as GlobalDeaths
from CovidDeaths
WHERE continent is not NULL
group by date
order by date DESC

SELECT SUM(new_cases) as GlobalCases, SUM(new_deaths) as GlobalDeaths from CovidDeaths
where continent is not null


--Looking at total population vs vaccionations
--TEMP TABLE
DROP TABLE if exists PercentPopulationVaccinated
CREATE TABLE PercentPopulationVaccinated
(
continent nvarchar(255),
location nvarchar(255),
date datetime,
population numeric,
new_vaccinations numeric,
rollingpeoplevaccinated numeric
)

INSERT INTO PercentPopulationVaccinated
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
	sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
from CovidDeaths dea join CovidVaccinations vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null

--
select *, (RollingPeopleVaccinated/population)*100 as PeopleVaccinatedRate from PercentPopulationVaccinated
WHERE date='20210730'
order by PeopleVaccinatedRate DESC


--Creating view to store data for later visualizations
CREATE VIEW PopulationVaccinated AS
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
	sum(vac.new_vaccinations) over (partition by dea.location order by dea.location, dea.date) as RollingPeopleVaccinated
from CovidDeaths dea join CovidVaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null

SELECT*FROM PopulationVaccinated


















