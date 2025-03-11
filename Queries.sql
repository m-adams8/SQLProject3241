SELECT B.Title, B.Price, B.Stock
FROM Book B
WHERE B.Stock > (SELECT AVG(A.Stock)
                FROM Book A);
