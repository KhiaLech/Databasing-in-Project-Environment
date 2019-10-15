/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


DELETE FROM Assignment;
DELETE FROM Office;
DELETE FROM Employee;

INSERT INTO Office (LocCode, Address, Description) VALUES
(1, 'John Street', 'Location of Swinburnes Hawthorn campus'),
(2,'Norton Road', 'Location of Swinburnes Croydon campus'),
(3, 'Stud Road', 'Location of Swinburnes Wantirna campus');

INSERT INTO  Employee (StaffID, GivenName, Surname) VALUES
(001, 'Khia', 'Lech'),
(002, 'John', 'Smith'),
(003, 'Olivia', 'Kinneavy');

INSERT INTO Assignment (StaffID, LocCode, DateAssigned) VALUES
(001, 1, '2019/06/26'),
(002, 2, '2019/01/01'),
(003, 3, '2019/10/06');
GO
