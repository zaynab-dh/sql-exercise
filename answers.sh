"SELECT Name FROM students"
"SELECT * FROM students WHERE Age > 30"
"SELECT Name FROM students WHERE Age = 30 AND Gender = "F";"
"SELECT Points FROM students WHERE Name = "Alex";"
"INSERT INTO students ('ID', 'Name','Age','Gender','Points') VALUES ('8','New student','25','F','400');
"UPDATE students SET Points = '320' WHERE Name = "Basma";"
"UPDATE students SET Points = '190' WHERE Name = "Alex";"

CREATE TABLE graduates 
(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);


INSERT INTO graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students Where Name = "Layal";


UPDATE graduates SET Graduation = '08/09/2018' WHERE Name = 'Layal';


DELETE FROM students WHERE Name = "Layal";

SELECT employees.Name, employees.Company,companies.Date 
FROM employees
Join companies ON employees.Company=companies.Name;

SELECT employees.Name FROM employees Join companies ON employees.Company=companies.Name WHERE companies.Date < "2000";

SELECT companies.Name FROM employees Join companies ON employees.Company=companies.Name WHERE employees.Role = "Graphic Designer";