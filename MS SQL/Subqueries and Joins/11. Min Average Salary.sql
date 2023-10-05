SELECT MIN(AVG) 
    AS [MinAverageSalary]
  FROM (
			  SELECT AVG([Salary]) 
			      AS [avg]
			    FROM [Employees]
			GROUP BY [DepartmentID]
       ) 
	AS [AverageSalary]