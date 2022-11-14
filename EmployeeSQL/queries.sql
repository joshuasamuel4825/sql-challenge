select employees.emp_no, last_name, first_name, sex, salary from employees
join salaries on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date from employees where DATE_PART('year',hire_date) = 1986;

select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

select dept_emp.emp_no , departments.dept_name, employees.last_name, employees.first_name from dept_emp
join departments on dept_emp.dept_no = departments.dept_no
join employees on dept_emp.emp_no = employees.emp_no;

select first_name, last_name, sex from employees where first_name like 'Hercules' and last_name like 'B%';

select dept_emp.emp_no, employees.first_name, employees.last_name from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
where dept_no = 'd007';

select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005';

select last_name, count(last_name) as "Freq_count" from employees
group by last_name
order by "Freq_count" desc;