   SELECT COUNT([c].[CountryCode]) - COUNT([m].[CountryCode])
	   AS [Count]
	 FROM [Countries]
	   AS [c]
LEFT JOIN [MountainsCountries]
	   AS [m]  
	   ON [m].[CountryCode] = [c].[CountryCode]