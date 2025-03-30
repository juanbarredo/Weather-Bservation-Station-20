-----------------------------------------03 23 2025---------------------------------

----ok,

----I am going to start exploring Chapter 10 in the SQL book.
----The SQL book is " Microsoft SQL Server 2016 : A Beginner's Guide "

--Chapter 10 :

--Indices:

----I believe that Indices will help me solve the Median problem I am having.

--Introduction
--Transact-SQL and indices.
--Guidelines for Creating and Using Indices.
--Special Types of Indices.

----I am excited for all of this.

--This chapter describes indices and their role in optimizing the response time of queries.

--The fisr part of the chapter discusses how indices are stored and the existing form of them.

----Perfect! I believe that this covers it.
----becuase I was wondering that I might not be able to make an index on the HackerRank interface.
----I know previously I had problems in solving another problem
----where I wanted to create a whole new column.
----which made me have to get better at nested functions.
----so, if there already are "existing forms of them".
----"them" being indices.
----then, I might not need to add a whole new index_column.

--The main part of the chapter
--explains three Transact-SQL statements pertaining to indices:
--CREATE INDEX,
--ALTER INDEX,
--and
--DROP INDEX.

----ok,
----I am really hoping I can either use an already existing column as an index.
----if there isn't an already existing one.
----why wouldn't there already be an existing index?

--After that,
--index fragmentation and its impact
--on the performance of the system will be explained.

--The next part of the chapter gives you several general recommendations
--for how and when indices should be created.

----I am also exited for that part of the chapter.
----I am sure there are many reasons to create an idex.

--The final part of the chapter describes several special types of indices.

--INTRODUCTION:

--Databas systems generally use indices to provide fast access to relational data.
--an index is a separate physical data structure that enables queries to access one of more data rows fast.

----I am getting discouraged that maybe 
----I think I found something.
----I am exited.

----------------------------------------------03 25 2025----------------------------------------------------

----let's see how athis goes.

--Proper tuning of indices is therefore a key for good query perfomarnce.

--An index is in many ways analogous to a book index.
--When you are looking for a topic in a book,
--you use its index to find the pages where that topoc is described.
--Similarly,
--when you search for a row of a table, ----how is this done in their mind?  
--the Database Engine uses an index
--to find its physical location.
--However, there are two main differences 
--between a book index and a database index:

--	A s a book reader,
--	you can decide whether or not to use the book's index.
--	This possibility generally does not exist if you use a database system:
--	the system component called the query optimizer decides whethefr or not to use an existing index.

----right, an "existing index"

--	A particular book's index is edited together with the book
--	and does not change at all.
--	This means that you can find a topic exactly on the page where it is determined in the index.
--	In contrast,
--	a database index can change each time the corresponding data is changed.

--If a table does not have an appropriate index,
--the database system uses the table scan method to retrieve rows.
--Table Scan means that each row is retrieved and examined in sequence.
--( from first to last )
--and returned in the result set f the search condition
--in the WHERE clause evaluates to TRUE.
--Therefore,
--all rows are fetched according to their physical memory location.

--This method is less efficient than an index access, as explained next.

-------------------------------------03 30 2025--------------------------------------

--I am now thinking of trying to solve for the median
--by using IF THEN ELSE statements

--I think I can build the query using the COUNT(column_name) 
