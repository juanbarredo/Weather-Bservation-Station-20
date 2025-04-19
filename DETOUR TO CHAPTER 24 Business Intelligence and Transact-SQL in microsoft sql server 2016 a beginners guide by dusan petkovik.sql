--standard:

-- means me.

------------ means me copying from the book.

---------------------------03 06 2025-------------------------
--I am going to type this out instead of using the mindmapping software.

--I think I don't need to map to get a layout.

--I need to hit the weeds right now.

-----------------The SQL standard has adopted a set of online analytical processing (OLAP) f
---------------functions that enable you to easily perdomr these calculations and many others
--------------that used to be very complex for implementation.

------------------this part of the SQL standar is called SQL/OLAP 

---------------therefore, 
----------------SQL/OLAP comprises all functions and operators that are used for data analysis.

----------------using OLAP functions has several advantages fro users:

----------------users with standard knwledge of SQL can easily specify the calculations they need.

-----------------databasae systems, such as the database engine, can perform these calculations more efficiently.

-------------------because there is a standard specification of these functions,
------------------they're now much more economical for tool and application vendors to exploit.

-------------------almost all analytical functions proposed by the SQL standard are implemented in enterprise
------------------database systems int he same way.
-----------------for this reason, 
-----------------you can port queries in relation to SQL/OLAP from one system to another,
-----------------without any code changes.

--so, 

--I am feeling frustrated that I wasted my attention span on something that I am hoping pays off.

--we shall see.

--i am honestly stuck otherwise.

--i want to describe my problem.

--I want the selection to bring up only the median to add up.
--i need to do the steps.
--orgarnize by desc or asc.
--then just count to the middle point.
--if middle point is not a whole number.
--then take two and add them together then divide by two.
--otherwise.   present the number in the middle of the list.

--so right now then.

--i am working on counting to the middle point.
--i am hoping that the "Window Construct"
--will get me to count to the middle point?

-----------------------------------------03 09 2025---------------------------------------------

--I am going to continue working on the window construct.

-------The database engine offers many extensions to the SELECT statement that 
-------can be used primarily for analytic operations.
-------some of these extensions area defined accoording ot he SQL standard and some are not.
-------the following sections describe both standard and nonstandard SQL/OLAP functions and operators.

-------WINDOW CONSTRUCT

-------A window (in relation to SQL/OLAP) DEFINES A PARTITIONED SET OF ROWS TO WHICH A FUCTION IS APPLIED.
-------the number of rows that belong to a window is dynamically determined in relation to the user's specifications.
-------the window construct is specified using the OVER clause.

-------the standard window construct has three main parts.

--------partitioning 
---------ordering and framing
--------aggregation grouping 

--right now "partitioning" is excting
--"ordering and framing" are mysterious
--"aggregation grouping" is legendary.

----------before you delve into the window construct and its parts,
----------take a look at the table that will be used for the examples.
--ok, I already have that table.
--let me get it out.

--USE sample
--SELECT *
--	FROM project;

--ok, 
--I thought I already had this table but this is a new table indeed.
--I am unsure how to proceed.
--in saving the table.
--I think it is the sample database.

--------------------------03 10 2025-----------------------------------------
--I suppose that I will either make a new file or just add it here. 
--this is a notes section?

--USE sample;
--SELECT * 
--	FROM department;

	--ok,
	--I think that I will use this database because this is the database (the sample database) 
	--where I have saved the other book related tables.

--then I should follow protocol and make a new file.

-------------------------------------04 15 2025-------------------------------------------------------

--I thought I was done looking at this chapter to solve Weather Observation Station 20.
--it is about finding the median of LAT_N

--I peaked and saw an answer that included the TOP clause in the SELECT statement.

--TOP (50) PERCENT it said.

--Yeah, that should be able to solve it.

--So, I look in the book and learn that it is in Chapter 24!

--So, let me continue here to explore the TOP clause.

----Standard and Nonstandard Analytics Functions:

----The Database Engine contains the following standard and nonstandard analytic functions:

----	TOP
----	OFFSET/FETCH
----	NTILE
----	PIVOT and UNPIVOT

----The second function,
----OFFSET/FETCH,
----is specified in the SQL standard,
----while the three others are Transact-SQL extensions.
----The following sections describe these
----analytic functions and operators.

----TOP Clause
----The TOP clause specifies the first n rows of the query
----result that are to be retrieved.

----This clause should always be used with the ORDER BY clause.

----because the result of such a query is always well fedined and can be used in table expressions.

----(a table expression specifies a sample of a grouped result set).

---------------------------04 17 2025-------------------------------------------

--Happy to continue.

----A query with TOP but without the ORDER BY clause
----is nondeterministic,
----meaning that multiple executions of the query with the same data
----may not always display the same result set.

---Example 24.19 shows the use of this clause.

----EXAMPLE 24.19

----Retrieve the four projects with the highest budgets:

--USE sample;
--SELECT TOP (4) dept_name, budget
--	FROM project_dept
--	ORDER BY budget DESC;

----As you can see from Example 24.19,

----the TOP clause is part of the SELECT list and is written in front of all column names in the list.

----NOTE:
----You should write the input value of TOP inside parentheses,
----because the system supports any self-contained expression as input.

--How outrageous of a self-contained expression can one place in there?

----The TOP clause is a nonstandard ANSI SQL implementation
----used to display the ranking of the top n rows from a table.

--I can't get over the fact that TOP clause doesn't mean or include the ORDER BY clause.

--I think this might point to something I cannot quite comprehend yet.

----A query equivalent to Example 24.19 that uses the window constrcut and the RANK function is shown in Example 24.20

----EXAMPLE 24.20
----Retrieve the four projects with the highest budgets:

--USE sample;
--SELECT dept_name, budget
--	FROM 
--	( SELECT dept_name, budget,
--		RANK () OVER ( ORDER BY budget DESC ) AS rank_budget
--		FROM project_dept) parts_dept

--Ok,
--I need to review how the tables look like from the relevant database.

--I have missed a lot of clues as a result.

--or there is this felt helplessness which could have been completely avoided from looking through the tables.

-----------------------------------------04 18 2025--------------------------------------

--Let me explore the tables in the database sample.

--USE sample;
--SELECT * 
--	FROM project_dept;

--USE sample;
--SELECT *
--	FROM part_dept; --I can't find any mention excecpt in example 24.20
								--it is probably a typo.

--USE sample;
--SELECT dept_name, budget
--	FROM 
--	( SELECT dept_name, budget,
--		RANK () OVER ( ORDER BY budget DESC ) AS rank_budget
--		FROM project_dept) project_dept
--		WHERE rank_budget <= 4;

		--I am very tripped out that the subquery that makes up the ranking function through a window construct
		--is AFTER the FROM clause.

		--it is such a weird placement for me.

--USE sample;
--SELECT dept_name, budget
--	FROM ( SELECT dept_name, budget,
--		RANK () OVER ( ORDER BY budget DESC ) AS rank_budget
--		FROM project_dept)
--	 project_dept
--		WHERE rank_budget <= 4; --I switched the order around and it seems that line 245 in this case
		--will not link up with the AS rank_budget in line 242 in this case.

		--that is so interesting.

		--ok,
		--so I need to make a decision.

		--well, there are just two more examples.
		--at least the next one is with porcentages!
		--I will definitely do that one.

----The TOP clause can albe b eused with the additional PERCENT option.
----In that case,
----the first n percent of rows are retrieved from the result set.
--this might be worthwhile thinking about.
--like, result set.  is pre-emptive.
--the way this is chunked here for me is very interesting.
----The additional option WITH TIES
----specifies that additioanl rows will be retrieved from the query result
----if they have the same value in the ORDER BY  column(s) as the last row that belongs to the displayed set.

----Example 24.21 shows the use of the PERCENT and WITH TIES options.

-------------------------------------------04 19 2025-----------------------------------------------------

----EXAMPLE 24.21
----Retrieve the top 25 percent of rows with the smallest number of employees:

--ok, I will give this one a crack before looking at the answer.

--let me go ahead and zero in on the table that will be used.

USE sample;
SELECT *
	FROM project_dept;

--ok,
--I now need to do some weird backwards thinking.
--or like,
--double barreled questions here.

--let me first go ahead and get the first part down.
--which could be smallest number of employees.
--ORDER BY()

--USE sample;
--SELECT emp_cnt
--	FROM project_dept
--	ORDER BY emp_cnt ASC;

--USE sample;
--SELECT TOP (25) PERCENT WITH TIES emp_cnt, budget
--	FROM project_dept
--	ORDER BY emp_cnt ASC;

--I was more-or-less able to solve the query.
--, I just missed "budget" column.
--no, again.
--they do weird wording.
--whatever.

--I want to move on and tackle the median again.
--I feel I have enough to try.