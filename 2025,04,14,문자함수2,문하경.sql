--instr:Ư�� ���� ��ġ ����               �鼼��°'-'��ġ
SELECT 'A-B-C-D', instr('A-B-C-D','-',1,3) "INSTR" from dual;
SELECT * FROM student;
SELECT name, tel, instr(tel,'3'), profno from student where deptno1=101;

--lpad:�������� Ư�� ���� ä��
SELECT name, id, lpad(id,10,'*') from student where deptno1=201;
SELECT name, id, lpad(id,10,'12345') from student where deptno1=201;
SELECT lpad(ename,9,'123456789') from emp Where deptno=10;
--rpad:���������� Ư�� ���� ä��
SELECT name, id, Rpad(id,10,'*') from student where deptno1=201;
SELECT Rpad(ename,10,'-') from emp where deptno=10;
SELECT Rpad(ename,9,'1234567789') from emp where deptno=10;
SELECT Rpad(ename,9,substr('1234567789',lengthb(ename)+1)) from emp where deptno=10;

--ltrim:�־��� ���ڿ����� ���� Ư�� ���� ����
SELECT ename from emp where deptno=10;
SELECT ltrim(ename,'C') from emp where deptno=10;
--rtrim:�־��� ���ڿ����� ������ Ư�� ���� ����
SELECT ename from emp where deptno=10;
SELECT rtrim(ename,'R') from emp where deptno=10;

--replace:A�� B�� ġȯ��
--                     ename�� ù��°���� �α��ڸ� ��ιٲ��  
SELECT ename, replace(ename, substr(ename,1,2),'**')from emp where deptno=10;

--����1
SELECT ename, replace(ename, substr(ename,2,2),'--') from emp;
--����2
SELECT name,jumin, replace(jumin,substr(jumin,7,7),'-/-/-/-') "REPLACE" from student where deptno1=101;

