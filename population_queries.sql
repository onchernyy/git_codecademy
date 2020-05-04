-- How many entries in the database are from Africa?
SELECT count(name)
FROM countries
WHERE continent = 'Africa';

-- What was the total population of Oceania in 2005?
SELECT sum(population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE continent = 'Oceania'
AND year = 2005;


-- What is the average population of countries in South America in 2003?
SELECT avg(population)
FROM countries
JOIN population_years
on countries.id = population_years.country_id
WHERE continent = 'South America'
AND year = 2003;


-- What country had the smallest population in 2007?
SELECT min(population)
FROM countries
JOIN population_years
on countries.id = population_years.country_id
WHERE year = 2007;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT avg(population)
FROM countries
JOIN population_years
on countries.id = population_years.country_id
WHERE name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT count(*)
FROM countries
JOIN population_years
on countries.id = population_years.country_id
WHERE name like '%The%';


-- What was the total population of each continent in 2010?
SELECT continent, sum(population)
FROM countries
JOIN population_years
on countries.id = population_years.country_id
WHERE year = 2010
GROUP by continent;

