--4�� JOIN ��������
--�����
--�� 1) emp ���̺�� dept ���̺��� ��ȸ�Ͽ� �Ʒ��� ���� ����ϼ���.
SELECT empno, ename, dname from emp e, dept d where e.deptno=d.deptno;

--�� 2) �л� ���̺� (student) �� ���� ���̺� (professor) �� join �Ͽ� �л��� �̸��� ����������ȣ, �������� �̸��� ����ϼ���.
SELECT * from student;
SELECT * from professor;
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p where s.profno = p.profno;

--�� 3) �л� ���̺�(student)�� �а� ���̺�(department) , ���� ���̺�(professor) �� Join�Ͽ� �л��� �̸��� �л��� �а��̸�, �л��� �������� �̸��� ����ϼ���.
SELECT * from department;
SELECT s.name "STU_NAME", d.dname "DEPT_NAME", p.name "PROF_NAME" from student s, department d, professor p
where s.profno = p.profno and d.deptno = s.deptno1;

--������
--�� 1) Custormer ���̺�� gift ���̺��� Join�Ͽ� ������ ���ϸ��� ����Ʈ�� ��ȸ�� �� �ش� ���ϸ��� ������ ���� �� �ִ� ��ǰ�� ��ȸ�Ͽ� ���� �̸��� ���� �� �ִ� ��ǰ ���� �Ʒ��� ���� ����ϼ���.
SELECT * from customer;
SELECT * from gift;
SELECT c.gname "CUST_NAME", c.point "POINT", g.gname "GIFT_NAME" from customer c, gift g 
where c.point >= g.g_start and c.point <= g.g_end;

--�� 2) Student ���̺�� score ���̺� , hakjum ���̺��� ��ȸ�Ͽ� �л����� �̸��� ������ ������ ����ϼ���.
SELECT * from student;
SELECT * from score;
SELECT * from hakjum;
SELECT s.name "STU_NAME", sc.total "SCORE", h.grade "CRE" from student s, score sc, hakjum h
where s.studno = sc.studno and sc.total >= h.min_point and sc.total <= h.max_point;
--outer join
--�� 1 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.
--�� ���������� �������� ���� �л��� ��ܵ� �Բ� ����ϼ���.
SELECT s.name "STU_NAME",  p.name "PROF_NAME" from student s, professor p where s.profno = p.profno(+);

--�� 2 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.
--�� �����л��� �������� ���� ������ ��ܵ� �Բ� ����ϼ���.
SELECT s.name "STU_NAME",  p.name "PROF_NAME" from student s, professor p where s.profno(+) = p.profno;

--�� 3 ) Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� ����ϼ���.
--�� �����л��� ���� �� �� ���� ��ܰ� ���� ������ ���� �ȵ� �л� ����� �Ѳ����� ����ϼ���.
SELECT s.name "STU_NAME",  p.name "PROF_NAME" from student s FULL OUTER JOIN professor p on s.profno = p.profno;

--4�� JOIN ��������
--1. �л� ���̺� (student) �� �а� ���̺� (department) ���̺��� ����Ͽ� �л��̸�, 1 �����а���ȣ(deptno1) , 1���� �а� �̸��� ����ϼ���.
SELECT * FROM student;
SELECT * from department;
SELECT s.name "STU_NAME", s.DEPTNO1, d.dname "DEPT_NAME" from student s, department d
where s.deptno1 = d.deptno;

--2. emp2 ���̺�� p_grade ���̺��� ��ȸ�Ͽ� ���� ������ �ִ� ����� �̸��� ����, ���� ����, �ش� ������ ������ ���ѱݾװ� ���� �ݾ��� �Ʒ� ��� ȭ��� ���� ����ϼ���.
SELECT name, e2.position, pay, s_pay low_pay, e_pay high_pay from emp2 e2, p_grade p where e2.position = p.position;


   
--3. Emp2 ���̺�� p_grade ���̺��� ��ȸ�Ͽ� ������� �̸��� ����, ���� ���� , ���� ���� �� ����ϼ���. 
--���� ������ ���̷� ����ϸ� �ش� ���̰� �޾ƾ� �ϴ� ������ �ǹ��մϴ�.  ���̴� ����(sysdate)�� �������� �ϵ� trunc �� �Ҽ��� ���ϴ� �����ؼ� ����ϼ���.
SELECT * from emp2;
SELECT * from p_grade;
SELECT name, trunc(months_between(sysdate,e2.birthday)/12) as "age", e2.position as "curr_position", p.position
from emp2 e2, p_grade p where trunc(months_between(sysdate,e2.birthday)/12) BETWEEN p.s_age and p.e_age;

--4 . customer ���̺�� gift ���̺��� Join�Ͽ� ���� �ڱ� ����Ʈ���� ���� ����Ʈ�� ��ǰ �� �Ѱ����� ������ �� �ִٰ� �� ��,
--Notebook �� ������ �� �ִ� ����� ����Ʈ, ��ǰ���� ����ϼ���.
SELECT * from customer;
SELECT * from gift;
SELECT c.gname, c.point, g.gname from customer c, gift g
where g.g_start <= c.point and g.gname = 'Notebook';

--5. professor ���̺��� ������ ��ȣ, �����̸�, �Ի���, �ڽź��� �Ի��� ���� ��� �ο����� ����ϼ���. �� �ڽź��� �Ի����� ���� ������� ������������ ����ϼ���.  



--6. emp ���̺��� �����ȣ, ����̸�, �Ի���, �ڽź���  ���� �Ի��� ��� �ο����� ����ϼ���. �� �ڽź��� �Ի����� ���� ������� ������������ ����ϼ���.

