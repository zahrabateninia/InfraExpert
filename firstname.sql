select emp.id, emp.name, emp.salary, emp.department_id
from employee_table as emp
left join department_table as dep
on emp.department_id = dep.department_id
where (emp.salary > 6000 and emp.name like 'B%' and department_name = 'Sales')



-- sample output

-- id  name       salary  department_id
-- --  ---------  ------  -------------
-- 5   Ben Green  60000   1            