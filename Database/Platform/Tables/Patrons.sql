CREATE TABLE [operations].[Patrons]
(
    [Identifier] UNIQUEIDENTIFIER NOT NULL, 
    [FirstName] NVARCHAR(100) NOT NULL, 
	[LastName] NVARCHAR(100) NOT NULL, 
    [Address1] [Address] NOT NULL, 
	[Address2] [Address] NOT NULL, 
	[City] [City] NOT NULL,
	[State] [State] NOT NULL,
	[PostalCode] [PostalCode] NOT NULL,
	[Phone] [Phone] NOT NULL,
	[Email] [Email] NOT NULL,
	[IsDeleted] BIT NOT NULL,
	[Created] [AuditDate] NOT NULL DEFAULT getutcdate(),
    [CreatedBy] [AuditUser] NOT NULL, 
	[Modified] [AuditDate] NULL,
    [ModifiedBy] [AuditUser] NULL, 
    CONSTRAINT [PK_PatronIdentifier] PRIMARY KEY CLUSTERED ([Identifier] ASC) on [operations],
);

GO

CREATE UNIQUE NONCLUSTERED INDEX [UIX_inventory_item_name]
    ON [operations].[Patrons]([LastName], [FirstName] ASC)
    ON [operations];
GO
