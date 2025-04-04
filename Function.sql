CREATE FUNCTION GetCustomer
(
    @CusID INT
)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @FullName NVARCHAR(100);

    SELECT @FullName = name + ' ' + address
    FROM Customers
    WHERE customer_id = @CusID;

    RETURN @FullName;
END


SELECT 
    customer_id,
    dbo.GetCustomer(customer_id) AS FullName
FROM 
    Customers;
