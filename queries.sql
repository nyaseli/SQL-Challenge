select sal.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
from Employees as emp
inner join salaries as sal on sal.emp_no = emp.emp_no;

select first_name, last_name, hire_date from Employees
where extract (year from hire_date) = 1986;

select dem.dept_no, dep.dept_name, dem.emp_no, emp.last_name, emp.first_name
from dept_manager as dem
inner join Employees as emp on dem.emp_no = emp.emp_no
inner join Department as dep on dem.dept_no = dep.dept_no;

select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from Employees as emp
left join dept_emp as dem on emp.emp_no = dem.emp_no
inner join Department as dep on dem.dept_no = dep.dept_no;

select first_name, last_name, sex from Employees
where first_name = 'Hercules' and last_name like 'B%';

select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from Employees as emp
left join dept_emp as dem on emp.emp_no = dem.emp_no
inner join Department as dep on dem.dept_no = dep.dept_no
where dep.dept_name = 'Sales';

select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from Employees as emp
left join dept_emp as dem on emp.emp_no = dem.emp_no
inner join Department as dep on dem.dept_no = dep.dept_no
where dep.dept_name = 'Sales' or dep.dept_name = 'Development';

select last_name, count (last_name) as Frequency
from Employees
group by last_name
order by Frequency desc;
