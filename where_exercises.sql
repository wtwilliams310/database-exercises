USE employees;

# show tables;
#
# SELECT * FROM employees;
#
# SELECT last_name FROM employees
# WHERE last_name LIKE 'z%z';
#
# # select employee with a first name starts with a and last name ends with z
#
# SELECT first_name, last_name FROM employees
# WHERE first_name LIKE 'p%z';
#
#
# SELECT DISTINCT first_name FROM employees
# WHERE first_name LIKE '%z%';
#
# SELECT DISTINCT first_name, last_name FROM employees
# WHERE first_name LIKE '%z%';
#
# SELECT * FROM employees
# WHERE emp_no BETWEEN 10001 AND 10010
#     OR  emp_no BETWEEN 10201 AND 10210;
#
# SELECT  *
# FROM employees
# WHERE first_name IN ('Georgi', 'Parto');
#
# SELECT  *
# FROM employees
# WHERE gender = 'F'
# OR emp_no < 10200;
#
# SELECT  *
# FROM employees
# WHERE emp_no < 10200
#    AND (gender = 'F' OR gender = 'M');
#
#
# SELECT * FROM employees
# ORDER BY last_name;
#
# SELECT * FROM employees
# WHERE first_name LIKE 'B%'
# ORDER BY last_name DESC;
#
# SELECT * FROM employees
# WHERE first_name = 'Leni'
# ORDER BY gender DESC, last_name;
#
# Select * from employees
# limit 10 offset 30;


# Part One
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select * from employees
where last_name LIKE 'E%';

select  * from employees
where last_name like '%q%';

# Part Two
select * from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya') and gender = 'M';

select *
from employees
where last_name like 'E%' or last_name like '%e';

select *
from employees
where last_name like 'E%e';

select *
from employees
where last_name like '%q%' and not last_name like '%qu%';


