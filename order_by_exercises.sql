use employees;

# 2
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

# 3
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name,
         last_name asc;

# 4
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name,
         first_name asc;

# 5
select *
from employees
where last_name like 'E%' or last_name like '%e'
order by emp_no;

# 6
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name,
         first_name desc;

select *
from employees
where last_name like 'E%' or last_name like '%e'
order by emp_no desc ;