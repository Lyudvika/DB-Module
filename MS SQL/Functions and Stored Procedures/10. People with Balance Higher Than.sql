CREATE PROCEDURE [usp_GetHoldersWithBalanceHigherThan] @balance DECIMAL(18,4)
			  AS
		   BEGIN
					   SELECT [FirstName]
						   AS [First Name]
						    , [LastName]
						   AS [Last Name]
					     FROM [AccountHolders]
						   AS [ah]
					LEFT JOIN [Accounts]
					       AS [a]
						   ON [ah].[Id] = [a].[AccountHolderId]
					 GROUP BY [FirstName]
							, [LastName]
					   HAVING SUM([a].[Balance]) > @balance
					 ORDER BY [FirstName]
							, [LastName]
						
			 END