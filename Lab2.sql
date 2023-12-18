/* Lab2 */

SELECT Books.B_TITLE, Employees.E_FNAME, Employees.E_LNAME
FROM Books
INNER JOIN Employees ON Books.B_EDIT = Employees.E_ID

SELECT DISTINCT E_ROOM
FROM Employees
WHERE E_POST = 5

SELECT Books.B_TITLE, Authors.A_FNAME, Authors.A_LNAME 
FROM Titles
INNER JOIN Authors ON Titles.A_ID = Authors.A_ID
INNER JOIN Books ON Titles.B_ID = Books.B_CONTRACT

SELECT Authors.A_FNAME, Authors.A_LNAME, COUNT(Titles.B_ID) AS BOOKS_COUNT
FROM Titles
INNER JOIN Authors ON Titles.A_ID = Authors.A_ID
GROUP BY Authors.A_ID, Authors.A_FNAME, Authors.A_LNAME

SELECT Customers.C_ID, Customers.C_NAME, Books.B_TITLE
FROM Customers
INNER JOIN Orders ON Customers.C_ID = Orders.O_COMPANY
INNER JOIN Items ON Orders.O_ID = Items.O_ID
INNER JOIN Books ON Items.B_ID = Books.B_CONTRACT

SELECT COUNT(E_ID) AS MEN
FROM Employees
WHERE DATEPART(year, E_BORN) < 2000 
	AND E_SEX = 'М'

SELECT B_TITLE, B_CIRCUL * B_PRICE AS SUMM
FROM Books

SELECT B_TITLE
FROM Books
INNER JOIN Items ON Books.B_CONTRACT = Items.B_ID
INNER JOIN Orders ON Items.O_ID = Orders.O_ID
WHERE DATEPART(year, Orders.O_DATE) = 2020
	AND DATEPART(month, Orders.O_DATE) = 9

SELECT SUM(B_CIRCUL) AS CIRCUL
FROM Books
INNER JOIN Titles ON Books.B_CONTRACT = Titles.B_ID
INNER JOIN Authors ON Titles.A_ID = Authors.A_ID
WHERE Authors.A_ADDR = 'Казань'

SELECT table1.A_FNAME, table2.A_FNAME
FROM Authors table1, Authors table2
WHERE table1.A_ID < table2.A_ID 
	AND table1.A_ADDR = table2.A_ADDR

