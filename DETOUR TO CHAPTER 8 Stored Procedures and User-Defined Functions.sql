-----------------------------03 30 2025------------------

----I am going to work on Chapter 8
----Stored Procedures and User-Defined Functions.

--In this Chapter
--	Procedural Extensions
--	Stored Procedures
--	User-Defined Functions

----I believe that I will just work on the Procedural Extensions part

--This chapter introduces bathces and routines.

--A batch is 
--a sequence of Transact-SQL statements 
--and procedural extensions.

----ok, this is a new and very important concept to me.

----batches.

--A routine can be either a stored procedure or a user-defined function (UDF).

----I don't think I care about routines right now.

----yeah, batches seems to be the thing that will help me solve for the median.

--The beginning of the chapter introduces all procedural extensions supported by the database engine.
--After that,
--procedural extensions are used,
--together with Transact-SQL statements,
--to show how batches can be implemented.

--A batch can be stored as a database object,
--as either a stored procedure or a UDF.

--Some stored procedures are written by users,
--and others are provided by Microsoft and are reffered to as 
--system stored procedures.

--In contrastj to user-defined stored procedures,
--UDFs return a value to a caller.

-----------------------------03 31 2025--------------------------------------------


----that is interesting that a batch can be stored as a database object.

--all routines can be written in either Transact-SQL or in another programming language
--such as C# or Visual Basic.

--PROCEDURAL EXTENSIONS.
--The preceding chapters introduced Transact-SQL statements
--that belong to the 
--data definition language
--and the data manipulation language.

--most of these statements can be groped together to build a batch.

--As previously mentioned,

--a batch 
--is a sequence of Transact-SQL statements
--and PROCEDURAL EXTENSIONS
--that are sent to the Databse Engine for execution 
--together.

----I am going to skip some text/.

--There are a number of restrictions concerning the appearance of different 
--Transact-SQL statements inside a batch.

--The most important is that the data definition statements 
--CREATE VIEW,
--CREATE PROCEDURE,
--and CREATE TRIGGER
--must each be the only statement in a batch.

--NOTE
--to separate DDL statements from one to another,
--use the GO statement.

----this above is speficically to use with the limitations noted in lines 74 - 78.

--The following sections describe each procedural extensions of the Transact-SQL language separately.

--BLOCK OF STATMENTS.

--a block allows the building of units with one or more transact-sql statements.

--every block begins with the BEGIN statment and terminates with the END statement

--	BEGIN
--	statement_1
--	statement_2
--...
--	END

-- a  block can be used inside the IF statement to allow the execution of more than one statement,
--depending on a certain condition

--example 8.1

--IF STATEMENT.
--The Transact-SQL statement IF corresponds to the statement with the same name that supported by almost all programing languages.
--IF executes one Transact-SQL statement ( or more, enclosed in a block ) 
--IF a Boolean Expression,
--which follows the keyword IF,
--evaluates to TRUE.