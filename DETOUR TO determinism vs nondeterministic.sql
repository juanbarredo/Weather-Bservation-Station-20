---------------------------06 16 2025-------------------------------

--my goal is to study the concept of determinism vs nondeterminism 
--within sql

--from the microsoft.com website.

--You can't influence the determinism of any built-in function.
--Each built-in function is deterministic or nondeterministic
--based on how the function is implemented by SQL Server.

--For example, specifying an ORDER BY clause in a query doesn't change the determinism of a function that is used in that query.

--the text in line 12 changed my life.

--i now see that my approach was missing that knowledge.

--i really thought I was changing the determinism or to say
--i didn't understand at all.

--i thought oganizing by ORDER BY DESC was changing
--i need to run tests and rebuilt my instuition correctly.

--i need to run 

USE Weather_Observation_Station_2;
SELECT ID 
	FROM STATION;

	--I WANT TO TEST GETDATE()
	--what database has a time.
	--i think for sure adventure works

	--SELECT is famously non-deterministic.

----------------------------------06 17 2025--------------------------------

--so,
--I am lost and this is the next lead.

USE sample;
SELECT *
	FROM project_p2;

USE sample;
SELECT GETDATE() 
	FROM project_p2;

	--Ok,
	--so,
	--I guess I tested GETDATE() and it does indeed get me a new date everytime.


--I have run out of time.
--I am certainly stuck.

--I am glad to be spending my time here though.

--Where else can I go?
--What are the types of functions?
--aggregate is one for sure.
--seems I can't quite do that.
--can I 

--a mean is ordered through the DESC or ASC.
--does that affect its determinism.
--I need to figure that out next time.

--------------------------------------------06 19 2025----------------------------------

--Alright,

--So,

--I am exploring the beginning of my determinism on the current problem
--I am surprised to find out that the SELECT TOP ( 50 ) PERCENT LAT_N?

USE Weather_Observation_Station_2;
SELECT TOP ( 50) PERCENT LAT_N 
	FROM STATION;

USE Weather_Observation_Station_2;
SELECT TOP ( 50) PERCENT LAT_N 
	FROM STATION
	ORDER BY LAT_N ASC;

--does this mean that TOP ( ) is nondeterministic?

--is ID a stable?

--it is iff it has been assigned as a key column.

--we can assume here that it is.

--we can test these assumptions

--USE Weather_Observation_Station_2;
--SELECT UNIQUE(ID) 
--	FROM STATION;

--I am learning too much right now.

--colums are sets.  and I guess by definition sets have no order.
--I think that is why SQL "does not guarantee a result set is ordered unless an ORDER BY clause is used"

--ok, 
--this is serious business.

--even finding unique values is hard.

--need to think further
--enjoying going deeper into this problem
--challenging myself.