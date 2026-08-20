create table snowflake_learning_db.trading_use_case.emppoyee_information_source as
Select ea.day_id, 
e.emp_id,
e.emp_email,
e.emp_name,
e.emp_salary,
d.dept_id,
d.dept_name,
d.dept_code
from 
snowflake_learning_db.trading_use_case.employee_attendance ea
join
snowflake_learning_db.trading_use_case.employees e on (ea.emp_id = e.emp_id)
join
snowflake_learning_db.trading_use_case.departments d on (e.dept_id = d.dept_id)

Select count(*) from snowflake_learning_db.trading_use_case.employee_attendance

Select * from snowflake_learning_db.trading_use_case.employees

insert into snowflake_learning_db.trading_use_case.employees values (
10, 'ABCD', 10000, 2002, 'abcd@company.com')

Select * from snowflake_learning_db.trading_use_case.employee_information_source
alter table snowflake_learning_db.trading_use_case.employee_attendance rename to snowflake_learning_db.trading_use_case.employee_attendance_silver


Select * from snowflake_learning_db.trading_use_case.employees_silver