SELECT dep.department_name, AVG(e.salary) AS average_salary
FROM employee_table AS e
INNER JOIN department_table AS dep ON e.department_id = dep.department_id
GROUP BY e.department_id
ORDER BY average_salary DESC;

-- sample output:

-- department_name  average_salary
-- ---------------  --------------
-- Engineering      62500.0       
-- Sales            55000.0   