USE world;
Show tables;

SELECT * FROM city;

-- Check for empty spaces
SELECT *
FROM city
WHERE name LIKE ' %' OR name LIKE '% ' OR CountryCode LIKE  ' %'  OR CountryCode LIKE '% ' 
								OR District LIKE '% ' OR District LIKE  ' %'  OR Population LIKE '% ' OR Population LIKE  ' %';
                                

-- Top 10 cities
SELECT Name, CountryCode, Population
FROM city
ORDER BY Population DESC
LIMIT 10;

-- Total Population per Country in the table
SELECT CountryCode, SUM(Population) AS TotalPopulation
FROM city
GROUP BY CountryCode
ORDER BY TotalPopulation DESC;

-- Cities with Population below 10000
SELECT Name, CountryCode, Population
FROM city
WHERE Population < 10000
ORDER BY Population ASC;
