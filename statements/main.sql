-- ADD NEW DATABASE
CREATE DATABASE eCommerce

-- REMOVE DATABASE (WARNING)
DROP DATABASE eCommerce

-- ADD NEW TABLE
CREATE TABLE Products (
   ProductId INT NOT NULL,
   ProductName TEXT,
   ProductPrice DECIMAL(3,2),
   ProductQuantity INT,
   ProductSize TEXT,
   PRIMARY KEY(ProductId)
);

-- ADD NEW TABLE BASED ON EXSITING TABLE
CREATE Inventory AS 
SELECT ProductName, ProductQuantity, ProductSize
FROM Product;

-- REMOVE TABLE (WARNING)
DROP TABLE Inventory;

-- EMPTY TABLE (CAUTION)
TRUNCATE TABLE Inventory;

-- ADD COLUMNS INTO TABLE
ALTER TABLE Products ADD 
ProductCategory TEXT, 
ProductType TEXT;

-- REMOVE A COLUMN FROM TABLE
ALTER TABLE Products
DROP COLUMN ProductType

-- UPDATE TYPE OR SIZE OF COLUMN
ALTER TABLE Products 
MODIFY COLUMN ProductCategory VARCHAR(255)

-- REMOVE COLUMN OF TABLE (CAUTION)
ALTER TABLE Products
DROP COLUMN ProductCategory

--  INCREASE ROW VALUE BY 1
CREATE TABLE Goods(
   GoodId INT NOT NULL,
   GoodSold INT NOT NULL AUTO_INCREMENT,
   GoodStatus TEXT NULL,
   GoodConfirrmation TEXT NULL,
);

-- KEEP TRACK OF DIFFERENT FORMATS
CREATE TABLE Inventory(
   InventoryId INT NOT NULL,
   InventoryOrder DATE,
   InventoryShippment DATETIME,
   InventoryDispatch TIMESTAMP,
   InventoryHistory YEAR,
);