--������ ����
desc emp;
select*from emp;
select ename,job from emp;
--���̺� ����
desc professor;
select * from professor; --�ѱ� ������ �� ���� ����
select name, 'good morning~~!' "��~" from professor;

select dname,'it''s deptno:',deptno "DEAME AND DEPTNO"from dept;
select dname,'it''s deptno:'"�λ�",deptno "DEAME AND DEPTNO"from dept;
select dname,'it''s deptno:'||deptno "DEAME AND DEPTNO"from dept;
select dname,q'[,it's deptno:]',deptno "DEAME AND DEPTNO"from dept;

select profno, name, pay from professor; --��Ī �����
select profno "Prof'no", name AS "Prof's NAME", pay prof_Pay from professor; --��Ī ��� ��
