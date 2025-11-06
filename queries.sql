SQL QUERIES FOR ANALYSIS:-


-- Creating tables

CREATE TABLE unemployment (
    country TEXT,
    year INT,
    unemployment_rate FLOAT
);

-- GDP
CREATE TABLE gdp (
    country TEXT,
    year INT,
    gdp_usd FLOAT
);

-- COVID
CREATE TABLE covid (
    country TEXT,
    year INT,
    total_cases BIGINT,
    total_deaths BIGINT
);


-- Cleaning the data 

UPDATE unemployment SET country = TRIM(country);
UPDATE gdp SET country = TRIM(country);
UPDATE covid SET country = TRIM(country);

UPDATE unemployment SET country = LOWER(country);
UPDATE gdp SET country = LOWER(country);
UPDATE covid SET country = LOWER(country);

UPDATE unemployment SET year = CAST(year AS INTEGER);
UPDATE gdp SET year = CAST(year AS INTEGER);
UPDATE covid SET year = CAST(year AS INTEGER);


-- Merging the tables
CREATE TABLE merged_data AS
SELECT 
    u.country,
    u.year,
    u.unemployment_rate,
    g.gdp_usd,
    c.total_cases,
    c.total_deaths
FROM unemployment u
JOIN gdp g ON u.country = g.country AND u.year = g.year
JOIN covid c ON u.country = c.country AND u.year = c.year;

-- Analysing the data

-- Q1)How did unemployment change year-wise?

SELECT year, AVG(unemployment_rate) AS avg_unemployment
FROM merged_data
GROUP BY year;


-- Q2) Which countries had the highest COVID impact?
-- Top 10 countries with highest deaths:

SELECT country, SUM(total_deaths) AS deaths
FROM merged_data
GROUP BY country
ORDER BY deaths DESC
LIMIT 11;



-- Q3)Unemployment rate changing through the years?

SELECT year,avg(unemployment_rate) AS uemp_rate from unemployment GROUP BY year; 

-- Q4)Unemployment affecting a particular country like india

SELECT country,year,avg(unemployment_rate) AS uemp_rate from unemployment WHERE country= 'india' GROUP BY year;

-- Q5)gdp and unemployment relation?

SELECT country,year,gdp_usd,avg(unemployment_rate) AS uemp_rate from unemployment NATURAL JOIN gdp WHERE country= 'india' GROUP BY year;

-- Q6)What is the relation between GDP and COVID deaths?

SELECT 
    year,
    gdp_usd,
    total_deaths
FROM merged_data
WHERE country = 'india'
ORDER BY year;

