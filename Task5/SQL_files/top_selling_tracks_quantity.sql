SHOW TABLES;

SELECT
    t.Name AS TrackName,
    SUM(il.Quantity) AS TotalSold
FROM invoiceLine il
JOIN Track t
    ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY TotalSold DESC

LIMIt 10;
