--2025/05/12 
--�� ��ȯ �Լ�
SELECT '3'+'3' from dual;
SELECT '3+3' from dual;
SELECT 2+'A' from dual; --����ó�� ���� ���ڸ� ��ȯ ���� ERRERO

--to_char(): ��¥->����
SELECT * from student;
--to_number(): ����->����
SELECT to_number('5') from dual;
SELECT to_number('A') from dual; --ERERO
SELECT ascii('A') from dual;

--to_date(): ����->��¥
SELECT to_date('24/4/28')+1 from dual;
SELECT '24/4/28'+1 from dual; --ERERO

--�Ϲ� �Լ�

--NVL(Į��, ġȯ�� ��) null
SELECT ename, comm, nvl(comm,0), nvl(comm,100) from emp where deptno=30;

SELECT empno, ename, sal, comm, nvl(comm+sal,sal*0) from emp where deptno=30;

--DECODE(A,B,T,F)
SELECT * from professor;
SELECT deptno, name, DECODE(deptno,101,'Computer Engineering','AAA') "DNAME" from professor;

--CASE case ���� when ���1 than ���1 when ���2 than ���2 else ���3 end "�÷���" 
SELECT empno, ename, sal,
CASE when sal BETWEEN 1 and 1000 then 'level 1'
     when sal BETWEEN 1001 and 2000 then 'level 2'
     when sal BETWEEN 2001 and 3000 then 'level 3'
     when sal BETWEEN 3001 and 4000 then 'level 4'
            else 'level 5' end "LEVEL" from emp;