CREATE PROCEDURE GetCustomerByName
    @Name NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        customer_id,
        name,
        address
        FROM 
        Customers
    WHERE 
        name = @Name;
END
