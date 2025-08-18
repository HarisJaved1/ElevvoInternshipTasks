USE chinook;

SELECT
    t.Name AS TrackName,
    CONCAT('$', ROUND(SUM(il.Quantity * il.UnitPrice), 2)) AS Revenue
FROM InvoiceLine il
JOIN Track t
    ON il.TrackId = t.TrackId

GROUP BY t.Name
ORDER BY Revenue DESC
Limit 10;