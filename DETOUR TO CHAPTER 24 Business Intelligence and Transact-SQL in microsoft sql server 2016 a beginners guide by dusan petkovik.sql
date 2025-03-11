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

USE sample
SELECT *
	FROM project;

--ok, 
--I thought I already had this table but this is a new table indeed.
--I am unsure how to proceed.
--in saving the table.
--I think it is the sample database.

--------------------------03 10 2025-----------------------------------------
--I suppose that I will either make a new file or just add it here. 
--this is a notes section?

USE sample;
SELECT * 
	FROM department;

	--ok,
	--I think that I will use this database because this is the database (the sample database) 
	--where I have saved the other book related tables.

--then I should follow protocol and make a new file.
