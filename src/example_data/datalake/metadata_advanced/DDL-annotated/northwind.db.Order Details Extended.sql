CREATE VIEW [Order Details Extended] AS
SELECT [Order Details].OrderID, 
       [Order Details].ProductID, 
       Products.ProductName, 
           [Order Details].UnitPrice, 
       [Order Details].Quantity, 
       [Order Details].Discount, 
      ([Order Details].UnitPrice*Quantity*(1-Discount)/100)*100 AS ExtendedPrice
FROM Products 
     JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
/* "Order Details Extended"(OrderID,ProductID,ProductName,UnitPrice,Quantity,Discount,ExtendedPrice) */;

-- 

-- File: northwind.Order Details Extended.txt 
-- OrderID: INTEGER FROM 10248 TO 26529 like [11188, 11281, 11411, 11484, 11485, 11495, 11526, 11532, 11539, 11681]
-- ProductID: INTEGER FROM 1 TO 77 like [66, 19, 70, 26, 20, 69, 59, 57, 13, 31]
-- ProductName: TEXT FROM Alice Mutton TO Zaanse koeken like ['Louisiana Hot Spiced Okra', 'Teatime Chocolate Biscuits', 'Outback Lager', "Sir Rodney's Marmalade", 'Gumbär Gummibärchen', 'Gudbrandsdalsost', 'Raclette Courdavault', 'Ravioli Angelo', 'Konbu', 'Gorgonzola Telino']
-- UnitPrice: INTEGER FROM 2 TO 263.5 like [18, 14, 10, 15, 19, 21, 38, 12.5, 43.9, 9.5]
-- Quantity: INTEGER FROM 1 TO 130 like [20, 10, 30, 48, 35, 50, 15, 18, 9, 49]
-- Discount: NUMERIC FROM 0.0 TO 0.25 like [0.0, 0.05, 0.1, 0.2, 0.15, 0.25, 0.03, 0.02, 0.06, 0.04]
-- ExtendedPrice: NUMERIC FROM 2.5 TO 15810.0 like [180.0, 360.0, 252.0, 420.0, 90.0, 450.0, 210.0, 126.0, 630.0, 504.0]
-- 
