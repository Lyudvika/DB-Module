SELECT *
  INTO [EmployeesUpdate]
  FROM [Employees]
 WHERE [Salary] > 30000

DELETE 
  FROM [EmployeesUpdate]
 WHERE [ManagerID] = 42

UPDATE [EmployeesUpdate]
   SET [Salary] += 5000
 WHERE [DepartmentID] = 1

  SELECT [DepartmentID]
       , AVG([Salary]) 
	  AS [AverageSalary]
	FROM [EmployeesUpdate]
GROUP BY [DepartmentID]