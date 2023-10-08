  SELECT [FirstLetter]
    FROM (
				SELECT SUBSTRING([FirstName], 1, 1) AS [FirstLetter]
				FROM [WizzardDeposits]
				WHERE [DepositGroup] = 'Troll Chest'
		 )
	  AS [FirstLetterSubquery]
GROUP BY [FirstLetter]
ORDER BY [FirstLetter]