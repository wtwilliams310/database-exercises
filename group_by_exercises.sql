use employees;

select *
from titles;

# 2
select distinct title from titles ;

# 3
select last_name, first_name
from employees
where last_name like 'E%e'
group by last_name, first_name;

# 4
select last_name, count(*)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

# 5
select gender, count(*)
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;