SELECT
    i.BillingCountry,
    SUM(i.Total) AS Revenue 
FROM invoice i
GROUP BY i.BillingCountry
ORDER BY Revenue DESC;