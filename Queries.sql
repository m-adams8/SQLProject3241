SELECT A.F_Name, A.M_Name, A.L_Name
FROM Author A
JOIN Written_By WB ON A.Author_ID = WB.Author_ID
JOIN Are_Purchased AP ON AP.ISBN = WB.ISBN
JOIN Orders O ON O.Order_ID = AP.Order_ID
JOIN Place PL ON PL.Order_ID = O.Order_ID
JOIN Customer C ON C.Customer_ID = PL.Customer_ID
WHERE C.Customer_ID IN (
        SELECT C.Customer_ID
        FROM Customer C
        JOIN Place PL ON C.Customer_ID = PL.Customer_ID
        JOIN Orders O ON O.Order_ID = PL.Order_ID
        GROUP BY C.Customer_ID, C.F_Name, C.M_Name, C.L_Name, C.Email
        HAVING SUM(O.Total) > (
            SELECT AVG(Total)
            FROM (
                SELECT SUM(O.Total) AS Total
                FROM Customer C
                JOIN Place PL ON C.Customer_ID = PL.Customer_ID
                JOIN Orders O ON O.Order_ID = PL.Order_ID
                GROUP BY C.Customer_ID
            ) CO
        )
);