Summary

    select d.*, g.aggregate() FROM details AS d INNER JOIN group AS g on (d.id = g.id)

Example

    SELECT
      C.CustomerID, C.CustomerName,
      C.CustomerType, C.Address1, C.City,
      C.State, S.TotalSales
    FROM
      Customers C
    INNER JOIN
      (SELECT
         CustomerID, SUM(Sales) as TotalSales
       FROM
         Sales
       GROUP BY
         CustomerID) S
    ON
      C.CustomerID = S.CustomerID
