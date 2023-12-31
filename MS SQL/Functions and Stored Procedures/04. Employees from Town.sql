CREATE PROCEDURE [usp_GetEmployeesFromTown] @townName VARCHAR(50)
			  AS
		   BEGIN
					   SELECT [FirstName]
							, [LastName]
						 FROM [Employees]
						   AS [e]
					LEFT JOIN [Addresses]
						   AS [a]
						   ON [e].[AddressID] = [a].[AddressID]
					LEFT JOIN [Towns]
						   AS [t]
						   ON [a].[TownID] = [t].[TownID]
						WHERE [t].[Name] = @townName
			 END