-- Create Table --
CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

-- Into Values --
INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

select * from employee_table

-- Answer Test_SQL_1 --
SELECT DISTINCT salary FROM employee_table ORDER BY salary DESC
LIMIT 1 OFFSET 2;
