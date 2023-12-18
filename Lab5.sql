/* Lab5 */

CREATE VIEW Room_3
AS 
SELECT  
FROM Employees
WHERE E_ROOM = 3

CREATE VIEW City_Authors_Count
AS 
SELECT COUNT(A_ID) AS CNT, A_ADDR
FROM Authors
GROUP BY A_ADDR

CREATE VIEW Book_Title_Count 
AS 
SELECT Books.B_TITLE, Orders.O_DATE
FROM Books
INNER JOIN Items ON Books.B_CONTRACT = Items.B_ID
INNER JOIN Orders ON Items.O_ID = Orders.O_ID
WHERE O_DATE = '05.09.2020'


CREATE VIEW Orders_Book_Count
AS 
SELECT Orders.O_ID, SUM(Items.B_COUNT) AS CNT
FROM Orders
INNER JOIN Items ON Orders.O_ID = Items.O_ID
GROUP BY Orders.O_ID

CREATE VIEW City_Orders_Count
AS 
SELECT C_ADDR, COUNT(Orders.O_Id) AS CNT
FROM Customers
INNER JOIN Orders on Orders.O_COMPANY = C_ID
GROUP BY C_ADDR

CREATE VIEW Editor_Edited
AS 
SELECT DISTINCT B_TITLE AS B_NAME
FROM Books
INNER JOIN Editors ON Books.B_EDIT = Editors.E_ID
INNER JOIN Employees ON Editors.E_ID = Employees.E_ID
WHERE Employees.E_FNAME = 'Андреев'