/*SQL1
You will be given a table.
The table has 2 columns: employee, and salary.
Please output the 3rd Highest Salary!
*/

CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

select DISTINCT salary
from employee_table
order by salary DESC
limit 1 offset 2;