use employees;

select *
from salaries;

select distinct last_name
from employees
order by last_name desc
limit 10;

# 3
select emp_no
from salaries
order by salary desc
limit 5;

# 4
select emp_no
from salaries
order by salary desc
limit 5 offset 45;