CREATE FUNCTION [inventory].[getItemIdentifierByName](@ItemName VARCHAR(100))
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	RETURN(SELECT 
				Identifier
			FROM 
				inventory.Items
			WHERE
				[Name] = @ItemName);
END