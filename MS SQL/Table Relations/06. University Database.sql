CREATE TABLE [Majors]
(
	  [MajorID] INT PRIMARY KEY IDENTITY
	, [Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE [Students]
(
	  [StudentID] INT PRIMARY KEY IDENTITY
	, [StudentNumber] INT
	, [StudentName] NVARCHAR(50) NOT NULL
	, [MajorID] INT FOREIGN KEY REFERENCES [Majors]([MajorID]) NOT NULL
)
	
CREATE TABLE [Payments]
(
	 [ PaymentID] INT PRIMARY KEY 
	, [PaymentDate] DATETIME2
	, [PaymentAmount] DECIMAL(8,2) NOT NULL
	, [StudentID] INT FOREIGN KEY REFERENCES [Students]([StudentID]) NOT NULL
)
	
CREATE TABLE [Subjects]
(
	  [SubjectID] INT PRIMARY KEY IDENTITY
	, [SubjectName] NVARCHAR(50) NOT NULL
)
	
CREATE TABLE [Agenda]
(
	  [StudentID] INT FOREIGN KEY REFERENCES [Students]([StudentID]) NOT NULL
	, [SubjectID] INT FOREIGN KEY REFERENCES [Subjects]([SubjectID]) NOT NULL
	, PRIMARY KEY ([StudentID], [SubjectID])
)