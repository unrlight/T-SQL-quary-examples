/* Lab3 */

UPDATE Posts
SET P_SAL = P_SAL * 1.05
WHERE P_POST = 'Программист'

INSERT Customers(C_NAME, C_ADDR)
VALUES ('Шестой', 'Ростов')

INSERT INTO Orders (O_COMPANY, O_DATE)
VALUES (6, GETDATE())

INSERT INTO Items (O_ID, B_ID, B_COUNT)
VALUES (9, 1, 50), (9, 3, 70)

UPDATE Items
SET B_COUNT = B_COUNT + 10
WHERE O_ID = 9 AND B_ID = 1

DELETE FROM Items
WHERE O_ID = 9

DELETE FROM Orders
WHERE O_COMPANY = 6

DELETE FROM Customers
WHERE C_ADDR = 'Ростов'


UPDATE Orders
SET O_COMPANY = 5
WHERE O_COMPANY = 2

CREATE TABLE Table1(
	book_name varchar(50) NOT NULL ,
	count INT NOT NULL
)

INSERT INTO Table1 (book_name, count)
SELECT B_TITLE, B_CIRCUL
FROM Books
WHERE B_CIRCUL < 1000

