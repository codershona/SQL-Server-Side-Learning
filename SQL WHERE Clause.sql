SQL WHERE Clause:

The SQL WHERE Clause:

The WHERE clause is used to filter records.

The WHERE clause is used to extract only those records that fulfill a specified condition.

WHERE Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition;
Note: The WHERE clause is not only used in SELECT statement, it is also used in UPDATE, DELETE statement, etc.!

Demo Database
Below is a selection from the "Customers" table in the Northwind sample database:

CustomerID	|CustomerName	|ContactName	|Address	|City	|PostalCode	|Country
1

Alfreds Futterkiste	Maria Anders	Obere Str. 57	Berlin	12209	Germany
2	Ana Trujillo Emparedados y helados	Ana Trujillo	Avda. de la Constitución 2222	México D.F.	05021	Mexico
3	Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	México D.F.	05023	Mexico
4

Around the Horn	Thomas Hardy	120 Hanover Sq.	London	WA1 1DP	UK
5	Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	S-958 22	Sweden

WHERE Clause Example:
The following SQL statement selects all the customers from the country "Mexico", in the "Customers" table:

Example:
SELECT * FROM Customers
WHERE Country='Mexico';
Text Fields vs. Numeric Fields
SQL requires single quotes around text values (most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes:

Example:

SELECT * FROM Customers
WHERE CustomerID=1;
Operators in The WHERE Clause
The following operators can be used in the WHERE clause:

Operator	|Description	|Example
=	Equal	
>	Greater than	
<	Less than	
>=	Greater than or equal	
<=	Less than or equal	
<>	Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	Between a certain range	
LIKE	Search for a pattern	
IN	To specify multiple possible values for a column


-- Equal --

SELECT * FROM Products
WHERE Price = 18;

--Greater than--

SELECT * FROM Products
WHERE Price > 30;

--Less than--

SELECT * FROM Products
WHERE Price < 30;

--	Greater than or equal--

SELECT * FROM Products
WHERE Price >= 30;


--Less than or equal--

SELECT * FROM Products
WHERE Price <= 30;


--	Not equal. Note: In some versions of SQL this operator may be written as !=    --

SELECT * FROM Products
WHERE Price <> 18;


--	Between a certain range--
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;

--	Search for a pattern--

SELECT * FROM Customers
WHERE City LIKE 's%';


--To specify multiple possible values for a column--

SELECT * FROM Customers
WHERE City IN ('Paris','London');



