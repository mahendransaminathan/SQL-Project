
Drop table dbo.Orders;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product NVARCHAR(100),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

ALTER TABLE Orders -- Replace with your table name that has the foreign key
DROP CONSTRAINT FK_Orders_Customers; -- Replace with the actual foreign key name

Drop table dbo.Customers;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(100),
    address NVARCHAR(255)
);

INSERT INTO Customers (customer_id, name, address)
VALUES 
(1, 'Bob Smith', '123 Main St, New York, NY'),
(2, 'Alice Johnson', '456 Oak Ave, Los Angeles, CA'),
(3, 'Charlie Brown', '789 Pine Rd, Chicago, IL'),
(4, 'Bob Marley', '101 Reggae Ln, Kingston, JM');



INSERT INTO Orders (order_id, customer_id, product)
VALUES 
(101, 1, 'Laptop'),
(102, 2, 'Smartphone'),
(103, 3, 'Headphones'),
(104, 1, 'Keyboard');
