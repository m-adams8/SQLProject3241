SELECT e.Employee_ID AS ID, e.F_Name AS First_Name, e.L_Name AS Last_Name, COUNT(o.Order_ID) AS OrdersHandled, AVG(o.Total) AS AvgOrderValue, SUM(o.Total) AS TotalSales
FROM Employee AS e JOIN Is_Fulfilled AS i ON e.Employee_ID = i.Employee_ID JOIN Orders AS o ON i.Order_ID = o.Order_ID
GROUP BY e.Employee_ID, e.F_Name, e.L_Name;





