--02 17 2025----------------------------------------

--ok,

--just starting this up for the next time I pick this up.

-------------------------------02 18 2025-----------------------------------

--ok,
--so,
--let's review

--I will build this up slowly.

----------------------------A median
----------------------------is defined
----------------------------as s number separating the higher half of a data set 
----------------------------from the lower half.

----------------------------query the median of the Northern Latitudes (LAT_N) 
----------------------------from STATION and round your answer to 4 decimal places.

--ok,
--let me begin by 
--querying LAT_N

USE Weather_Observation_Station_2;
SELECT LAT_N
	FROM STATION;

	--Yeah,
	--already seeing the neat result set
	--has given confidence that I noticed new 
	--things that i had not previously realized when
	--i just tried to quickly solve it.
	
--ok,
--next.

--I need to sort.

--a median
--is defined
--as a number
--separating
--the higher 
--half
--from the lower half.

USE Weather_Observation_Station_2;
SELECT LAT_N
	FROM STATION
	ORDER BY LAT_N;

	--Ok,
	--now to test
	--lol

	--how do I reverse ORDER BY?
	--i will look at it later

USE Weather_Observation_Station_2;
SELECT MIN(LAT_N) AS 'MIN(LAT_N)'
	FROM STATION;

	--And as I read the problem.
	--I realize that they did indeed
	--want me to reverse the order.
	--ok,
--looking at the book
--ORDER BY COLUMN_NAME DESC;

USE Weather_Observation_Station_2;
SELECT LAT_N AS 'ORDER BY LAT_N DESC;'
	FROM STATION
	ORDER BY LAT_N DESC;

	--Ok,
	--now just a quick proof.

USE Weather_Observation_Station_2;
SELECT MAX(LAT_N) AS 'MAX(LAT_N)'
	FROM STATION;

	--Ok,

	--so now I have to figure out how to get the median?

--I am suddenly totally lost.
--how can I achieve the next step.

--I have the field
--that has
--a higher half
--and a lowe half.

--now,
--I need to isolate that number specifically.