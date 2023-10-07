CREATE PROCEDURE [usp_GetTownsStartingWith] @inputTown VARCHAR(50)
			  AS
		   BEGIN
					SELECT [Name] 
						AS [Town]
					  FROM [Towns]
					 WHERE SUBSTRING([Name], 1, LEN(@inputTown)) LIKE @inputTown
			 END