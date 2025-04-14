CREATE VIEW EmployeeOrderPerformance AS
SELECT e.Employee_ID, e.F_Name, e.L_Name, COUNT(o.Order_ID) AS OrdersHandled, AVG(o.Total) AS AvgOrderValue, SUM(o.Total) AS TotalSales
FROM Employee e JOIN Is_Fulfilled i ON e.Employee_ID = i.Employee_ID JOIN Orders o ON i.Order_ID = o.Order_ID
GROUP BY e.Employee_ID, e.F_Name, e.L_Name;


