DROP VIEW IF EXISTS ActiveCustomers;
Go
CREATE VIEW ActiveCustomers AS
SELECT customer_id, name, address
FROM Customers
WHERE name like 'Bob%';
Go

Select * from ActiveCustomers;
