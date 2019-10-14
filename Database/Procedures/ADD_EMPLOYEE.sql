CREATE PROCEDURE [dbo].[ADD_EMPLOYEE]
	@StaffID int,
	@GivenName nvarchar (50),
	@Surname nvarchar (50)
AS
	INSERT INTO Employee (StaffID, GivenName, Surname)
	VALUES (@StaffID, @GivenName, @Surname)
RETURN 0
