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