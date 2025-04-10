/****** Object:  Trigger [dbo].[trg_AfterInsert_Employees]    Script Date: 04/04/2025 18:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[trg_AfterInsert_Employees]
ON [dbo].[Customers]
AFTER INSERT
AS
BEGIN
    INSERT INTO CustomerAuditLog (customer_ID, Action, Name, ActionDate)
    SELECT 
        customer_ID,
        'INSERT',
        name,
        GETDATE()
    FROM inserted;
END
