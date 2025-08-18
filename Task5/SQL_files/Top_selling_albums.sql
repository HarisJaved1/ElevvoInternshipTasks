USE chinook;

SELECt 
    al.Title AS AlbumTitle,
    ar.Name AS Artist,
    SUM(il.Quantity) AS TotalSold
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId

Group BY al.title, ar.Name
ORDER BY TotalSold DESC

LIMIT 10;