SELECT C.Customer_ID, C.F_Name, C.M_Name, C.L_Name, SUM(AP.Quantity) AS Total_Books_Purchased
FROM Customer C JOIN Place PL ON C.Customer_ID = PL.Customer_ID
JOIN Orders O ON O.Order_ID = PL.Order_ID
JOIN Are_Purchased AP ON AP.Order_ID = O.Order_ID
GROUP BY C.Customer_ID
ORDER BY Total_Books_Purchased DESC
LIMIT 1;
