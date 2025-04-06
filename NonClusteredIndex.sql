CREATE NONCLUSTERED INDEX Customers_Name_Address
ON Customers (name, address);

SELECT name, type_desc
FROM sys.indexes
WHERE object_id = OBJECT_ID('Customers');
