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

# when the stored procedure is executed, the following details will be displayed
DECLARE	@return_value int

EXEC	@return_value = [dbo].[GetCustomerByName]
		@Name = N'Bob'

SELECT	'Return Value' = @return_value

GO
