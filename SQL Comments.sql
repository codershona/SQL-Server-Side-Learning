SQL Comments
Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.

Note: The examples in this chapter will not work in Firefox and Microsoft Edge!

Comments are not supported in Microsoft Access databases. Firefox and Microsoft Edge are using Microsoft Access database in our examples.

Single Line Comments
Single line comments start with --.

Any text between -- and the end of the line will be ignored (will not be executed).

The following example uses a single-line comment as an explanation:

Example
--Select all:
SELECT * FROM Customers;
The following example uses a single-line comment to ignore the end of a line:

Example
SELECT * FROM Customers -- WHERE City='Berlin';
The following example uses a single-line comment to ignore a statement:

Example
--SELECT * FROM Customers;
SELECT * FROM Products;

Multi-line Comments
Multi-line comments start with /* and end with */.

Any text between /* and */ will be ignored.

The following example uses a multi-line comment as an explanation:

Example
/*Select all the columns
of all the records
in the Customers table:*/
SELECT * FROM Customers;
The following example uses a multi-line comment to ignore many statements:

Example
/*SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Categories;*/
SELECT * FROM Suppliers;
To ignore just a part of a statement, also use the /* */ comment.

The following example uses a comment to ignore part of a line:

Example
SELECT CustomerName, /*City,*/ Country FROM Customers;
The following example uses a comment to ignore part of a statement:

Example
SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;