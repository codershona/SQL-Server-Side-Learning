SQL TOP, LIMIT or ROWNUM Clause
The SQL SELECT TOP Clause
The SELECT TOP clause is used to specify the number of records to return.

The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses ROWNUM.

SQL Server / MS Access Syntax:

SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;
MySQL Syntax:

SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
Oracle Syntax:

SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;
Demo Database
Below is a selection from the "Customers" table in the Northwind sample database:

CustomerID	CustomerName	ContactName	Address	City	PostalCode	Country
1

Alfreds Futterkiste	Maria Anders	Obere Str. 57	Berlin	12209	Germany
2	Ana Trujillo Emparedados y helados	Ana Trujillo	Avda. de la Constitución 2222	México D.F.	05021	Mexico
3	Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	México D.F.	05023	Mexico
4

Around the Horn	Thomas Hardy	120 Hanover Sq.	London	WA1 1DP	UK
5	Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	S-958 22	Sweden

SQL TOP, LIMIT and ROWNUM Examples
The following SQL statement selects the first three records from the "Customers" table:

Example
SELECT TOP 3 * FROM Customers;
The following SQL statement shows the equivalent example using the LIMIT clause:

Example
SELECT * FROM Customers
LIMIT 3;
The following SQL statement shows the equivalent example using ROWNUM:

Example
SELECT * FROM Customers
WHERE ROWNUM <= 3;
SQL TOP PERCENT Example
The following SQL statement selects the first 50% of the records from the "Customers" table:

Example
SELECT TOP 50 PERCENT * FROM Customers;
ADD a WHERE CLAUSE
The following SQL statement selects the first three records from the "Customers" table, where the country is "Germany":

Example
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';
The following SQL statement shows the equivalent example using the LIMIT clause:

Example
SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;
The following SQL statement shows the equivalent example using ROWNUM:

Example
SELECT * FROM Customers
WHERE Country='Germany' AND ROWNUM <= 3;
