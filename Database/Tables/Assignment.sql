CREATE TABLE [dbo].[Assignment]
(
	[DateAssigned] DATE NOT NULL PRIMARY KEY, 
    [LocCode] INT NOT NULL, 
    [StaffID] INT NOT NULL, 
    FOREIGN KEY (LocCode) References Office,
	FOREIGN KEY (StaffID) References Employee
)
