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
--and a lower half.

--now,
--I need to isolate that number specifically.

------------------------------------02 23 2025 ----------------------------

--I am wondering if there isn't just a median function?

--or I can count the number of rows.  noting that they are organized as such.

--how do I count?

--i think there is a literal function called count(column)

USE Weather_Observation_Station_2;
SELECT COUNT(LAT_N) AS 'COUNT(LAT_N)'
	FROM STATION;
	--would this have to be the subquery?

--USE Weather_Observation_Station_2;
--SELECT LAT_N AS 'MEDIAN'
--	FROM STATION
--	WHERE LAT_N IN
--	(SELECT COUNT(LAT_N)
--		FROM STATION);
		--This is wrong.
		--I need to do something that is quite out of my reach at the moment.

		--I need to devide the count in half.
		--I am now being flooded with how many more steps my query needs

		--a median isn't just half plus one or minus one.

		--ok, there isn't a function in it.

		--very well.
		--this is indeed one that I have to focus through.

		--take my time.

--next I need to build up a sense for that number.
--I need to look at the mathematical formula.

--yeah.  I reviewed a quick google search and it just splashed me.

--ok.

--this is definitely doable but it is now a marathon.

--I have to check how to work with count.
--I think count is my best friend.
--as of right now I have the first step.
--order them Descindingly.
--I have also counted them in this order.

--But this could be done in either order?

--let's see.


--the next step I have to do is to decide how to tackle the
--if odd, perfect!
--if even add the plus one and the minus one.

--actually.

--ok, so there are three steps.

--I have done the first one.
--the second one is the compound one.

--identify through odd even number.

--but I keep wanting to generalize.

--i think then the next step is how to identify and process odd or even.

--have one query for odd and have one query for even.

--i imagine the subquery will hadle the odd or even.

--can a subquery have a subquery?