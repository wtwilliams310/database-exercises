use employees;

select * from departments;

select departments.dept_name AS 'Department',
concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > now();

# 1
select departments.dept_name AS 'Department',
concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from departments join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > now() and employees.gender = 'f';


select titles.title as 'title',  count(*) as 'Total'
from titles join dept_emp on titles.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Customer Service' and dept_emp.to_date > now() and titles.to_date > now()
group by titles.title;

select departments.dept_name as 'Department', concat(employees.first_name, ' ',employees.last_name) as 'Department Manager',
       salaries.salary as 'Salary'
from departments join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on employees.emp_no = dept_manager.emp_no
join salaries on salaries.emp_no = employees.emp_no
where dept_manager.to_date > now() and salaries.to_date > now();

select concat(employees.first_name, ' ', employees.last_name) as 'Employee', departments.dept_name as 'Department',
       concat(employees.first_name, ' ', employees.last_name) as 'Manager'
from employees join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no
join dept_manager on departments.dept_no = dept_manager.dept_no
join titles on titles.emp_no = employees.emp_no
where dept_manager.to_date > now() and dept_emp.to_date > now();
# from departments join dept_manager on departments.dept_no = dept_manager.dept_no
# join dept_emp on dept_emp.dept_no = dept_manager.dept_no
# join employees on employees.emp_no = dept_emp.emp_no
# where dept_manager.to_date > now() and dept_emp.to_date > now();

select * from titles;