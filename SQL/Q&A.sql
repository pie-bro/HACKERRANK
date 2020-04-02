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
SELECT NAME
FROM STUDENTS
WHERE MARKS >75
ORDER BY RIGHT(NAME,3), ID ASC 

--Employee Names
--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT NAME
FROM EMPLOYEE
ORDER BY NAME

--Employee Salaries
--Write a query that prints a list of employee names (i.e.: the name attribute) 
--for employees in Employee having a salary greater than 2000 per month who have 
--been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID

--The PADS
--Generate the following two result sets:
--Query an alphabetically ordered list of all names in OCCUPATIONS, 
--immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
--For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
--Query the number of ocurrences of each occupation in OCCUPATIONS. 
--Sort the occurrences in ascending order, and output them in the following format:
--There are a total of [occupation_count] [occupation]s.
--where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] 
--is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
--Note: There will be at least two entries in the table for each type of occupation.
SELECT CONCAT(NAME,'(',LEFT(OCCUPATION,1),')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ',LOWER(OCCUPATION),'s.') 
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;

--Occupations
--Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed 
--underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
--Note: Print NULL when there are no more names corresponding to an occupation.
--Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.




--Weather Observation Station 17
--Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
--Round your answer to 4 decimal places.
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N LIMIT 1

--Weather Observation Station 18
--Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
--a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
--Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MIN(LONG_W)-MAX(LONG_W)), 4)
FROM STATION

--Weather Observation Station 19
--Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum 
--values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
--Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
SELECT ROUND(SQRT(POWER(MIN(LAT_N)-MAX(LAT_N),2)+POWER(MIN(LONG_W)-MAX(LONG_W),2)),4)
FROM STATION

--Weather Observation Station 20
--A median is defined as a number separating the higher half of a data set from the lower half. 
--Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.




                  











