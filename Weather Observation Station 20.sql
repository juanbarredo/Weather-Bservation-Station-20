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

-----------------------------02 24 2025---------------------------------

--ok,

--I am completely lost.
--I am also excited.

--How can a subquery say if odd or even based on count
--ok, once I identify whether a field is odd or even.
--then, how do I pass 
--I think the special case should be else.

--the special case is the hard one.
--the hard one is when the count is even.

--then, else.  Just do display the number that lands on the median.

--I am completely lost as to how to do this.


--I imagine a subquery to handle the special case.

--let's build just the subquery as the outer query.

--so I need to pass the median when it has to be added and divided by two.
--how do I do that.

--let me then just divide two numbers by two in tsql

--USE Weather_Observation_Station_2;
--SELECT LAT_N
--	FROM STATION
--	WHERE LAT_N IN
--	(--WOW, I AM FLOORED.

--I am unsure how to tackle this.

--ok, so I need to first then isolate two values from the same field and add them together.

--how can I isolate on value

--USE Weather_Observation_Station_2;
--SELECT LAT_N
--	FROM STATION
--	WHERE LAT_N IN 
--	(SELECT LAT_N
--	FROM STATION
--	ORDER BY LAT_N DESC);--MAN, I AM BURNT.
	--I HAVE NO IDEA HOW TO PROCEED.
	--BUT THIS IS HARD STUFF THAT I HAVE TO STICK THROUGH.

	--I NEED to stop and think about how to accomplish this using my current style.

--I need the or I think I want the final or outer query to do the addition and division of the two median values when the field has an even number of rows.

--then that how can I add two items that are indeed in the same field but at different locations.
--I think there is a way to pass variables but not as fields.
--i would have to carve out a whole new field.
--a whole new field with what values?
--just the median plus 1 or the median minus 1 value?
--really bad craft.

--I have to visualize this really hard!

--I thkn I have to test how to add different values from the same field.

-------------------------------------02 25 2025-------------------------------------------------------

--I am making a breakthrough.

--the WHERE clause will just choose or pass the values to sum.  
--the values to sum and divide by two.

--the WHERE clause just needs to be really good at picking out the details.

--I am really excited to have solved this next possible idea to pursue.

--so, the next step is the to figure out how to select the correct values given that.
--ok, the where clause is executed ahead of the select statement

--ok,
--I need to organize the where clause then

--how can I WHERE to get the right values.

--USE Weather_Observation_Station_2;
--SELECT LAT_N
--	FROM STATION
--	WHERE LAT_N IN
--	(SELECT LAT_N
--		FROM STATION
--		WHERE--and this is where I am stuck

--USE Weather_Observation_Station_2;
--SELECT LAT_N
--	FROM STATION
--	WHERE LAT_N IN

--Now I am remembering that I need to figure out how to figure out the even or odd thing.
--so, this is the exception that I am trying to solve.
--I have decided that the exception is even because it is more work.

--for now though.
--i just wnat to get this to be the even
--i am going to figure out how to select part of the field.

--how can i meaningfully do this?
--because already I am wanting to come up with the final solution to the WHERE clause.

--I need to make a decision.

--the decision must be something like.

--------------------------------------03 02 2025---------------------------------------

--I had an amazing breakthrough yesterday while doing  yoga.

--I realized that I need to see how to get WHERE row_number_column_index IN 
--or something like that.

--let me see if I can get a query result for the row number alone.

USE Weather_Observation_Station_2;
SELECT * 
	FROM STATION;

	--HOLD ON.
	--is there really not a very simple row_number().
	--there is.
	--but it is complicated.

	--the rest of this pomodoro may well be exploring the 
	--row_number().

USE Weather_Observation_Station_2;
SELECT ROW_NUMBER() OVER(ORDER BY LAT_N DESC) AS 'LAT_N DESC', LAT_N --I feel like this is such a roundabout way of doing a simple pointing to the already existing index row?
	FROM STATION;

--ok,
--so now.
--I need to 
	--i am now reading about the SELECT -OVER() clause.
	--I need to learn how to get the over clause.
	--to define the correct row numbers for the median.

	--but it seems that I only know how to ORDER BY row_name DESC.

	--So, I need to explore it further.

	--I think I am getting the idea to try to PARTITION BY

	--

	USE Weather_Observation_Station_2;
SELECT ROW_NUMBER() OVER(PARTITION BY 2 ORDER BY LAT_N DESC) AS 'LAT_N DESC', LAT_N --PARTITION BY 2 didn't do anything ;_;
	FROM STATION;

--ok,
--time to start cloding down.

--but I am ver scared.

--I feel like I am wildly out there.

--so,

--I am looking into PARTITION BY() 
--I need to let this one simmer.
--I may need to watch a few videos on it.

--because it feels like PARTITION BY()
--can be used in some nice math stuff.

---------------------------03 03 2025---------------------------------

--decided to pick up my class book and look into "window functions"

--I found a section titled Window Construct.

--well, it is certainly getting complicated.

--which makes me wonder if I need to get so complicated to solve for the median.

--However, I don't know how else to proceed.

--I have also ran into this OVER() clause before and I just copied/pasted.

--this might be a sign to look into it more.

--that SQL took in new functions.  what does this mean?

--I want to try a super quieck query

USE Weather_Observation_Station_2;
SELECT SUM(LAT_N) OVER(ORDER BY LAT_N DESC)
	FROM STATION;

	--I got some weird ass answer.
	--I have no idea what is happening.
	--however, I have struck gold.

	USE Weather_Observation_Station_2;
	SELECT SUM(LAT_N)
		FROM STATION;

		--This is insane.

		--I am unsure how to proceed.

		--I guess I shoudl continue to read the section int he book.

		--but I also want to run around and exclaim success over and over again.

		--I might need to take a month and look at this section in the book.

		--chapter 24.

		--ok,
		--I may start looking at the first few sections.

		--ok,
		--everything before extensions to group by.

		--this might help me move towards the machine learning stuff I want to do.
		--i mean the main thing would be learning how to do more math.

		--linear algebra is right here.
-------------------------------------------03 06 2025--------------------------------------------------------------
--Right!

--I might be starting to plan out the chapter study today.

--But what exactly am I trying to get out of this chapter?

--Learning the OVER() that moves around the data set.

--I am now wondering if I really need this section?

--I know this topic will come up again.  So, why not tackle it right now anyways?

--I think I can only think far enough to want to read this chapter to find out what is going on.

--I will start using the mind mapping software and upload that into the github.

---------------------------03 30 2025---------------------------------------

--How about if for now I just focus on counting the rows.

USE Weather_Observation_Station_2;
SELECT COUNT(LAT_N) AS 'COUNT(LAT_N)'
	FROM STATION;

	--Ok,
	--there are 499 rows when I use COUNT(LAT_N)

	--so,
	--what now.

	--this is the subquery.
	--now I need to build the outer query.

	--what do I need to do now.
	--how do I call up the 1/2 number.

	--let me make a query that gives me the half number count.

USE Weather_Observation_Station_2;
SELECT COUNT(LAT_N) / 2 AS 'COUNT(LAT_N)  /  2'
	FROM STATION; 

	--So,
	--I am getting strong where vibes.

	--I need to investigate.

--USE Weather_Observation_Station_2;
--SELECT LAT_N-- AS 'THE ACTUAL 1/2 VALUE'
--	FROM STATION
--		WHERE LAT_N =
--		(SELECT COUNT(LAT_N) / 2
--			FROM STATION); 
			--I see an issue.
			--the issue is that I am unaware of how to call the index.
			--does the index have a specific column name?

		--seems a very specific thing I have to do is create an index?
		--I don't think this will work on the interface of hackerrank.com

		--isn;t there a whole chapter on indexes in the book?

		--I will look at that one next.


		--because I am missing how to turn a count into a single value.  
		--the value that is situated in the indexed spot that is the single value.

		--this might or might not be but I think it is a mobiuos strip.

		--ultimately the table is reinforced politically.

------------------------04 06 2025---------------------------------------

----I belive that I have gained enough roughly to solve for the median.

----I will use procedural language IF.

----let me build the logic for me.

----I need to have an IF that breaks between a count() being even or odd.

----I need to see how to check if a number if even or odd.

----How can I do this?

----I feel like I just don't know.

----I have found a page that explains something that has blown my mind

----but it hinges on knowing long division by hand.

----will this work for me?

--(ID % 2) <> 0

----What is the "<>" operator?

----"<>" means "Not equal to"

--syntaxsql
--expression <> expression

--pretty straight forward.

--I still am shocked at forgetting the remainder stuff from long division.

--this is the type of stuff that I cannot forget.

--becuase it is coming up.
