---1st query

select ce.empno,ce.lastname,ce.firstname,ce.sex,es.salary 
from companyEmployees ce
join employeesalaries es
on ce.empno=es.empno 
order by ce.empno asc;

----2nd query

select firstname,lastname,hiredate 
from companyEmployees where hiredate 
between'1986-01-01'and '1986-12-31' order by hiredate asc;

----3rd query
select dm.empno,dm.deptno,cd.deptname,ce.lastname,ce.firstname
from deptManager dm
join companyEmployees ce
on dm.empno=ce.empno
join companyDepartments cd
on dm.deptno=cd.deptno;

----4th----
select dm.deptno,dm.empno,ce.lastname,ce.firstname,cd.deptname
from deptManager dm
join companyDepartments cd 
on dm.deptno=cd.deptno 
join companyEmployees ce
on dm.empno=ce.empno;

----5th---
select firstname,lastname,sex from companyEmployees 
where firstname ='Hercules' and lastname Like 'B%'

---6th---
select ce.firstname,ce.lastname,de.empno,cd.deptname
from deptEmployees de
join companyDepartments cd
on de.deptno=cd.deptno
join companyEmployees ce
on de.empno=ce.empno
where cd.deptname = 'Sales';

___7th___
select ce.firstname,ce.lastname,de.empno,cd.deptname
from deptEmployees de
join companyDepartments cd
on de.deptno=cd.deptno
join companyEmployees ce
on de.empno=ce.empno
where cd.deptname in ('Sales','Development');

 ___8th__
select lastname,count(lastname)as numb from companyEmployees 
group by lastname 
order by numb desc;








