--1.
SELECT c.gname, point, g.gname from customer c, gift g 
where g.gname='Notebook' and c.point>=g.g_start;

--2.
SELECT c.gname, point, g.gname gift_name from customer c, gift g
where c.point BETWEEN g.g_start and g.g_end;

--4.
desc gift;

--5.
CREATE table dept3 as SELECT * from dept2;

--6.
SELECT ename, d.deptno, dname from emp e, dept d
where e.deptno=d.deptno;

--7.
SELECT max(sal+nvl(comm,0)) from emp;

--8.
SELECT deptno, ename, sal, sum(sal) over(ORDER BY sal) total from emp;

--9.
SELECT e1.empno, e1.ename, e1.mgr, e2.ename from emp e1, emp e2
where e1.mgr=e2.empno;

--10.
SELECT deptno, ename, sal, sum(sal) over(), round(sal/sum(sal) over() *100,2) from emp ORDER by 5 DESC;
SELECT deptno, ename, sal, sum(sal) over(), round(ratio_to_report(sal) over() *100,2) from emp ORDER by 5 DESC;

--11.
SELECT deptno, sum(sal) TOTAL from emp group by deptno;

--12.
SELECT e1.empno, e1.ename, e1.hiredate, count(e2.empno) from emp e1, emp e2
where e1.hiredate>e2.hiredate(+) group by e1.empno, e1.ename, e1.hiredate ORDER BY 4;

--13.
ALTER table dept6 MODIFY(loc VARCHAR2(20));

--14.
rename dept3 to dept7;

--15.
CREATE table new_table(no number(3), name VARCHAR2(10), birth date DEFAULT sysdate);
SELECT * from new_table;

--16.
drop table new_table;
TRUNCATE table new_table;
DELETE from new_table;