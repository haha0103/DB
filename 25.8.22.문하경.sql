--89P
--4) ����emp���̺� �Ʒ��� �ΰ��� �����͸� �Է��Ͻ� �� �۾��ϼ���.
--Emp ���̺��� ����Ͽ� �Ʒ��� ȭ��� ���� �μ����� ���޺��� �޿� �հ� ����� ����ϼ���.
INSERT into emp(empno,deptno,ename,sal)
VALUES(1000,10,'Tiger',3600);
INSERT into emp(empno,deptno,ename,sal)
VALUES(2000,30,'Cat',3000);
COMMIT;
--------------------------------------------------------------------------------
SELECT * from emp;
SELECT deptno, job, sum(sal) from emp group by deptno, job ORDER by deptno;
SELECT deptno, sum(decode(job,'CLERK',SAL,0)) "CLERK",
               sum(decode(job,'MANAGER',SAL,0)) "MANAGER",
               sum(decode(job,'PRESIDENT',SAL,0)) "PRESIDENT",
               sum(decode(job,'ANALYST',SAL,0)) "ANALYST",
               sum(decode(job,'SALESMAN',SAL,0)) "SALESMAN",
               sum(SAL) "TOTAL"
FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO;

--5) emp ���̺��� ����Ͽ� �������� �޿��� ��ü�޿��� ���� �޿��ݾ��� �Ʒ��� ������ ����ϼ���. 
-- ��, �޿��� ������������ �����ؼ� ����ϼ���.
SELECT * from emp;
SELECT sum(sal) from emp;
--over(ORDER by sal): �� �׸� ���� ������ �Ǻ��� ���
SELECT deptno, ename, sal, sum(sal)over(ORDER by sal) "Total" from emp;
--over(): ��ü�հ�� ��� ���
SELECT deptno, ename, sal, sum(sal)over() "Total" from emp;

--6) fruit ���̺��� �Ʒ��� ���� ���·� ����ϼ���.
--�� �� �̻��� max, sum �� �ʿ���µ�...
SELECT * from fruit;
SELECT max(sum(decode(name,'apple',100))) "APPLE",
       max(sum(decode(name,'grape',200))) "GRAPE",
       max(sum(decode(name,'orange',300))) "ORANGE"
from fruit Group by name;