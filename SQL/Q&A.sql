--Revising the Select Query I
--Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
SELECT *
FROM City
WHERE CountryCode = 'USA' AND Population > 100000

--Revising the Select Query II
--Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.
SELECT NAME FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE = 'USA'

--Select All
--Query all columns (attributes) for every row in the CITY table.
SELECT *
FROM CITY

--Select By ID
--Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY
WHERE ID = 1661

--Japanese Cities' Attributes
--Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'

--Japanese Cities' Names
--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'JPN'

--Weather Observation Station 1
--Query a list of CITY and STATE from the STATION table.
SELECT CITY, STATE
FROM STATION

--Weather Observation Station 3
--Query a list of CITY names from STATION with even ID numbers only. 
--You may print the results in any order, but must exclude duplicates from your answer.
SELECT DISTINCT CITY FROM STATION
WHERE ID%2 = 0

--Weather Observation Station 4
--Let N be the number of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION; 
--query the value of N-N' from STATION. 
--In other words, find the difference between the total number of CITY entries in the table and the number
--of distinct CITY entries in the table.
SELECT COUNT(CITY)-COUNT(DISTINCT CITY)
FROM STATION

--Weather Observation Station 5
--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
--(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one 
--that comes first when ordered alphabetically.
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC,
CITY LIMIT 1

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC,
CITY LIMIT 1

--Weather Observation Station 6
--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
--(MS SQL)
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '[AEIOUaeiou]%'

--Weather Observation Station 7
--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
--MS SQL
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%[AEIOUaeiou]'

--Weather Observation Station 8
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
--Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '[AEIOUaeiou]%[AEIOUaeiou]'


--Weather Observation Station 9
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '[AEIOUaeiou]%'

--Weather Observation Station 10
--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '%[AEIOUaeiou]'

--Weather Observation Station 11
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
--Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '[AEIOUaeiou]%[AEIOUaeiou]'

--Weather Observation Station 12
--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
--Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '[AEIOUaeiou]%'
AND CITY NOT LIKE '%[AEIOUaeiou]'

--Higher Than 75 Marks
--Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
--Order your output by the last three characters of each name. 
--If two or more students both have names ending in the same last three characters 
--(i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.







