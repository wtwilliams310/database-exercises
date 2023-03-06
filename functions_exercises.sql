use employees;

select *
from employees;
# 2
select concat(first_name, ' ', last_name)
from employees
where last_name like 'E%' or last_name like '%e'
order by emp_no;

# 3
select * from employees
where month(birth_date) = 12
and day(birth_date) = 25;

# 4
select * from employees
where year(hire_date) between 1990 and 1999
    and month(birth_date) = 12
  and day(birth_date) = 25;

# 5
select * from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by year(birth_date) asc, year(hire_date) desc ;

# 6
select hire_date, curdate(), DATEDIFF(curdate(), hire_date) AS days_since_hire from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by year(birth_date) asc, year(hire_date) desc ;

