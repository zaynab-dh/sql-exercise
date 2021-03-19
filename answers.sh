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


1.INSERT INTO graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students Where Name = "Layal";


2.UPDATE graduates SET Graduation = '08/09/2018' WHERE Name = 'Layal';


3.DELETE FROM students WHERE Name = "Layal";

1.SELECT employees.Name, employees.Company,companies.Date 
FROM employees
Join companies ON employees.Company=companies.Name;

2.SELECT employees.Name FROM employees Join companies ON employees.Company=companies.Name WHERE companies.Date < "2000";

3.SELECT companies.Name FROM employees Join companies ON employees.Company=companies.Name WHERE employees.Role = "Graphic Designer";

1.SELECT Name, max(Points) from students;
2.SELECT avg(Points) from students;
3.SELECT count(Name) from students WHERE points = "500";
4.SELECT Name from students WHERE Name LIKE '%s%';
5.SELECT Name from students ORDER BY points DESC;
