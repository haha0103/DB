-- Join: 두개의 테이블를 합쳐서 새로운거를 만든다(join은 테이블을 두개를 쓴다고???)
--                           ↓ 테이블 이름이 a로한다    
--SELECT a.col1, b.col1 from table a, table b where a.col2 = b.col2;

-- 등가 join (=)
--예 1)
SELECT * from emp;
SELECT * from dept;
SELECT empno, ename, dname from emp, dept;
--                          ↓emp랑 dept둘다 있어서 오류가 나요
SELECT empno, ename, dname, deptno from emp, dept where emp.deptno = dept.deptno;
SELECT empno, ename, dname, e.deptno from emp e, dept d where e.deptno = d.deptno;

--예 2)
SELECT * from student;
SELECT * from professor;
SELECT s.name "STU_NAME", p.name "PROF_NAME", s.profno, p.profno from student s, professor p where s.profno = p.profno;

--예 3)
SELECT * from student;
SELECT * from department;
SELECT * from professor;
SELECT s.name "STU_NAME", d.dname "DEPT_NAME",p.name "PROF_NAME" 
from student s, professor p, department d where s.profno = p.profno and d.deptno = s.deptno1;

-- 비등가 join (>= <= > <)
-- 예 1)
SELECT * from customer;
SELECT * from gift;
SELECT c.gname "CUST_NAME", point, g.gname "GIFT_NAME" 
from customer c, gift g where point BETWEEN g.g_start and g.g_end;