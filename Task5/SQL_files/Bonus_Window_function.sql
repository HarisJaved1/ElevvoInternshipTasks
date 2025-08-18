USE chinook;

SELECT 
    t.Name AS TrackName,
    SUM(il.Quantity * il.UnitPrice) AS Revenue,
    RANK() OVER (ORDER BY SUM(il.Quantity * il.UnitPrice) DESC) AS RevenueRank
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.TrackId, t.Name
ORDER BY RevenueRank
LIMIT 10;
