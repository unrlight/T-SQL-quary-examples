/* Lab4 */

SELECT A_FNAME, A_LNAME, A_ADDR
FROM Authors
WHERE Authors.A_ID = (
    SELECT A_ID 
	FROM Titles
    WHERE B_ID = (
        SELECT B_CONTRACT 
		FROM Books
        WHERE B_PRICE = (
			SELECT MAX(B_PRICE) 
			FROM Books
		)
	)
)

SELECT *
FROM Employees
WHERE E_ROOM = (
    SELECT E_ROOM 
	FROM Employees
    WHERE E_POST = (
        SELECT P_ID 
		FROM Posts
        WHERE P_POST = 'Программист'
	)
) AND E_POST != (
	SELECT P_ID 
	FROM Posts
	WHERE P_POST = 'Программист'
)

SELECT A_FNAME, A_LNAME, A_ADDR
FROM Authors
WHERE A_ID IN (
    SELECT A_ID
	FROM Titles
	GROUP BY A_ID
	HAVING COUNT(A_ID) >= 2
)



SELECT A_FNAME, A_LNAME
FROM Authors
WHERE A_ID IN (
    SELECT A_ID
    FROM Titles
    WHERE B_ID IN (
        SELECT B_CONTRACT
        FROM Books
        WHERE B_CIRCUL IN (
            SELECT MIN(B_CIRCUL)
            FROM Books
		)
	)
)

SELECT A_FNAME, A_LNAME, A_ADDR
FROM Authors
WHERE A_ID IN (
    SELECT A_ID
    FROM Titles
    WHERE B_ID IN (
        SELECT B_CONTRACT
        FROM Books
        WHERE B_CIRCUL IN (
            SELECT MAX(B_CIRCUL)
            FROM Books
		)
	)
)

SELECT A_FNAME, A_LNAME
FROM Authors
WHERE A_ID IN (
    SELECT A_ID
    FROM Titles
    GROUP BY A_ID
    HAVING COUNT(A_ID) <= (
		SELECT COUNT(A_ID)
		FROM Titles
		WHERE A_ID = (
			SELECT A_ID
			FROM Authors
			WHERE A_FNAME = 'Яковлев'
		)
	)
) AND A_FNAME != 'Яковлев'

