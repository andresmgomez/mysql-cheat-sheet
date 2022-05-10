-- SELECT ALL COLUMNS FROM TABLE
SELECT * FROM Products

-- SELECT COLUMNS FROM TABLE
SELECT ProductName, ProductSize FROM Products;

-- SELECT ONLY DIFFERENT VALUES
SELECT DISTINCT ProductName, ProductPrice FROM Products;

-- SELECT ROWS THAT MATCHES WHERE CONDITION
SELECT * FROM Products WHERE ProductName = "Galaxy A58"
SELECT * FROM Products WHERE ProductQuantity > 50
SELECT * FROM Products WHERE ProductName LIKE 'g%'
SELECT * FROM Products WHERE ProductQuantity IN ('Fixed', 'Incremental', 'Dropdown')

-- SELECT ROWS THAT MATCH BOOLEAN CONDITION
SELECT * FROM Products 
WHERE ProductName = 'Galaxy Tablet' AND ProductPrice = 345.00;
SELECT * FROM Products 
WHERE ProductName = 'Galaxy J700T' OR ProductName = 'Galaxy S3';
SELECT * FROM Products 
WHERE NOT ProductSize = 100
SELECT * FROM Products 
WHERE ProductQuantity <= 500 AND ProductSize < 150;
SELECT * FROM Products 
WHERE ProductPrice BETWEEN 235.40 AND 940.80;

-- SELECT ROWS BASED ON ORDER BY COLUMNS
SELECT * FROM Products ORDER BY ProductCategory, ProductType;

-- SELECT ROWS IN ASCENDING ORDER (A-Z)
SELECT * FROM Products ORDER BY ProductName ASC, ProductCategory DESC;

-- SELECT ROWS FOR UNKNOW VALUES
SELECT GoodSold, GoodStatus FROM Goods WHERE GoodStatus IS NULLL
SELECT GoodSold, GoodConfirmation FROM Goods WHERE GoodConfirmation IS NOT NULL; 

