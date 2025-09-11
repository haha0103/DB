-- Join: �ΰ��� ���̺� ���ļ� ���ο�Ÿ� �����(join�� ���̺��� �ΰ��� ���ٰ�???)
--                           �� ���̺� �̸��� a���Ѵ�    
--SELECT a.col1, b.col1 from table a, table b where a.col2 = b.col2;

-- � join (=)
--�� 1)
SELECT * from emp;
SELECT * from dept;
SELECT empno, ename, dname from emp, dept;
--                          ��emp�� dept�Ѵ� �־ ������ ����
SELECT empno, ename, dname, deptno from emp, dept where emp.deptno = dept.deptno;
SELECT empno, ename, dname, e.deptno from emp e, dept d where e.deptno = d.deptno;

--�� 2)
SELECT * from student;
SELECT * from professor;
SELECT s.name "STU_NAME", p.name "PROF_NAME", s.profno, p.profno from student s, professor p where s.profno = p.profno;

--�� 3)
SELECT * from student;
SELECT * from department;
SELECT * from professor;
SELECT s.name "STU_NAME", d.dname "DEPT_NAME",p.name "PROF_NAME" 
from student s, professor p, department d where s.profno = p.profno and d.deptno = s.deptno1;

-- �� join (>= <= > <)
-- �� 1)
SELECT * from customer;
SELECT * from gift;
SELECT c.gname "CUST_NAME", point, g.gname "GIFT_NAME" 
from customer c, gift g where point BETWEEN g.g_start and g.g_end;