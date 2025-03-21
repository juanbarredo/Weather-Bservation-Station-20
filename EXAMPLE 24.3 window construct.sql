-------------------------------------03 16 2025----------------------------------

--PARTITIONING

--Partitioning allows you to dividw the result set of a query into groups,
--so that each row from a partition will be displayed separately.

--If no partitioning is specified,
--the entire set of rows comprises a single partition.
--
--Although the partitioning looks like a grouping using the GROUP BY clause,
--it is not the same thing.

--The GROUP BY clause collapses the rows in a partition into a single row,
--whereas the partitioning within the window construct simply organizes the rows into groups without collapsing them.

----Now this is making me wonder about.  If I really need to use a window construct to acquire the median.
----Couldn't I just use the GROUP BY?

----There still seems to be something that I can't quite grasp?
----Right, it's that compund step.
----if the count is even, add and divide.
----if the cound is odd, the median is the middle number in the count.

----I can't grasp it any other way except to try and work on this window construct section.

--The following two examples 
--show the difference 
--between partitioning using the window construct
--and grouping using the GROUP BY clause.
--
--Suppose that you want to calculate several different aggregates concerning employees in each department.

--Example 24.3 shows how the OVER clause with the PARTITION BY clause can be used to build partitions.

--EXAMPLE 24.3

--Using the window construct, 
--build partitions 
--according to the values 
--in the dept_name column 
--and calculate the sum 
--and the average 
--for the Accounting 
--and Research Departments.

-------------------------------------------03 17 2025---------------------------------------------

--Ok,
--I am thinking of cheating and looking at the answer.

--But I also want to work through it honestly.

--I will try to solve it tonight.

--the book doesn't seem to give a general form for the window construct.

--this is very interesting.

--ok,
--I am getting the format.
--it is weird that they aren't giving it a general form in the book
--or in this -to me- reputable website.

--ok.

--the function is SUM(accounting, research) AVG(accounting, research).

--I am completely lost.

--I looked at the answer.

--it is so weird.

--I will copy it below.

USE sample;
SELECT dept_name, budget,
	SUM ( emp_cnt ) OVER ( PARTITION BY dept_name ) AS emp_cnt_sum,
	AVG ( budget ) OVER ( PARTITION BY dept_name ) AS budget_avg
			FROM project_dept
				WHERE dept_name IN ('Accounting', 'Research');

				--I'm looking at the answer and it is so complicated.
				--Really a whole new landscape.

				--I honestly can't even see the answer.

				--I can't make sense of it.
				--I should start by looking at the *
USE sample;
SELECT * 
	FROM project_dept;

--Using the window construct, 
--build partitions 
--according to the values 
--in the dept_name column.

--I believe that half the battle is knowing the data set.
--I am able to see the answer better now that I have seen
--the table "project_dept".

--that is today's lesson.
--I will begin by using SELECT * FROM table_name.

--ewww
--my stomach turned to something new in my understanding of SQL

--how the SELECT statement and such is for rows in tables.
--I got a weird limitation awareness.

--but it is also exciting and I can build on it.

---------------------------03 18 2025----------------------------------------

--so,

--I am going to look and mess around with the window construct.

--I need to break down how it works for me 

--this is weird.
--I am wondering how to tinker with it.

--let me recopy it.

USE sample;
SELECT dept_name, budget,
	SUM ( emp_cnt ) OVER ( PARTITION BY 'Accounting' ) AS emp_cnt_sum,
	AVG ( budget ) OVER ( PARTITION BY 'Research' ) AS budget_avg
			FROM project_dept;--ok, I got an asnwer but I am even more confused.
				--WHERE dept_name IN ('Accounting', 'Research');

				--
--USE sample;
--SELECT AVG(Research)
--	FROM project_dept;

--this is so complex.
--I keep running into really new things for me that set me back.
--how 

--I think I just don't like this example.
--I may have to explore further on my own?

--yeah, the more I re-read the question the more I dislike it.
--it very vague to me.

USE sample;
SELECT dept_name,  
	SUM ( emp_cnt ) OVER ( PARTITION BY dept_name ) AS employee_count_sum,
	AVG ( budget ) OVER ( PARTITION BY dept_name ) AS budget_average
	FROM project_dept
		WHERE dept_name IN ('Accounting', 'Research');

----------------------------03 20 2025----------------------------------------------
--ok,
--I am going to move away from window consctruct.
--I really thought it would yield a good plan
--but I mainly learned that I am not ready to solve this problem yet.

--I should go back and re-read it.

--How else could I solve it?

		
