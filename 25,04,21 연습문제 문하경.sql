--2025�� 4�� 14�� 1�� Select ��������

--1. �μ����̺�(DEPT)�� ��� �����͸� ����϶�.
SELECT * from dept;

--2. EMP���̺��� �� ����� ����, �����ȣ, �̸�, �Ի����� ����϶�.
SELECT * from emp;
SELECT job, empno, ename,hiredate from emp;

--3. EMP���̺��� ������ ����ϵ�, �� �׸�(ROW)�� �ߺ����� �ʰ� ����϶�.
SELECT DISTINCT job from emp;
SELECT job from emp UNION SELECT job from emp;

--4. EMP���̺��� �޿��� 2850 �̻��� ����� �̸� �� �޿��� ����϶�.
SELECT * from emp;
SELECT ename, sal from emp where sal>=1850;


--5. EMP���̺��� �����ȣ�� 7566�� ����� �̸� �� �μ���ȣ�� ����϶�.
SELECT * from emp;
SELECT ename, empno from emp where empno=7566;

--6. EMP���̺��� �޿��� 1500�̻� 2850������ ������ ������ �ʴ� ��� ����� �̸� �� �޿��� ����϶�.
SELECT * from emp;              --��ħ
SELECT ename, sal from emp where not sal>=1500 and sal<=2850;

--7. EMP���̺��� 1981�� 2�� 20��~ 1981�� 5�� 1�Ͽ� �Ի��� ����� �̸�, ���� �� �Ի����� ����ϵ�, �Ի����� �������� �ؼ� ������������ �����϶�.
SELECT * from emp;              --��ħ
SELECT ename, job, hiredate from emp where hiredate between '81/02/20' and '81/05/01' order by hiredate;
--asc: �������� desc: ��������

--8. EMP���̺��� 10�� �� 30�� �μ��� ���ϴ� ��� ����� �̸��� �μ� ��ȣ�� ����ϵ�, �̸��� ���ĺ������� �����϶�.
SELECT ename, deptno from emp where deptno=10 or deptno=30 union all SELECT ename,deptno from emp;

--9. EMP���̺��� 10�� �� 30�� �μ��� ���ϴ� ��� ��� �� �޿��� 1500�� �Ѵ� ����� �̸� �� �޿��� ����϶�.(�� �÷����� ���� employee �� Monthly Salary�� �����Ͻÿ�)
SELECT * from emp;
SELECT ename "employee", sal "Monthly Salary", deptno from emp where deptno=10 or deptno=30 and sal>=1500;

--10. EMP���̺��� �����ڰ� ���� ��� ����� �̸� �� ������ ����϶�.
select * from emp;
SELECT ename, job from emp where mgr is null;

--11. EMP���̺��� Ŀ�̼��� �޴� ��� ����� �̸�, �޿� �� Ŀ�̼��� ����ϵ�, �޿��� �������� ������������ �����϶�.
select ename, sal, comm from emp where comm is not null order by sal desc;

--12. EMP���̺��� �̸��� �� ��° ���ڰ� A�� ��� ����� �̸��� ����϶�.
SELECT ename from emp where ename like'__A%';

--13. EMP���̺��� �̸��� L�� �� �� ���� �μ� 30�� �����ִ� ����� �̸��� ����϶�.
--                                             (�տ��־�L�ڵ�����L��)
SELECT ename, deptno from emp where ename like '%L%L%' and deptno=30;

--14. EMP���̺��� ������ Clerk �Ǵ� Analyst�̸鼭 �޿��� 1000, 3000, 5000 �� �ƴ� ��� ����� �̸�, ���� �� �޿��� ����϶�.
SELECT * from emp;
SELECT ename, job, sal from emp 
where job in('CLERK','ANALYST') and sal not in(1000, 3000, 5000);

SELECT ename, job, sal from emp 
where (job='CLERK' or job='ANALYST') and (sal<>1000 and sal<>3000 and sal!=5000);

--15. EMP���̺��� �����ȣ, �̸�, �޿� �׸��� 15% �λ�� �޿��� ������ ǥ���ϵ� �÷����� New Salary�� �����Ͽ� ����϶�.
--                          ��ݿø�
SELECT empno, ename, sal, round(sal*1.15,0) "New Salary" from emp;

--16. 15�� ������ ������ �����Ϳ��� �޿� �λ��(�� �޿����� ���� �޿��� �� ��)�� �߰��ؼ� ����϶�. �÷����� Increase�� �϶�.
SELECT empno, ename, sal, round(sal*1.15,0) "New Salary", round(sal*0.15) "Increase" from emp;

--17. EMP���̺��� ��� ����� �̸�(ù ���ڴ� �빮�ڷ�, ������ ���ڴ� �ҹ��ڷ� ǥ��) �� �̸� ���̸� ǥ���ϴ� ������ �ۼ��ϰ� �÷� ��Ī�� ���� ��NAME���� ��LENENAME������ �Ͻÿ�.
SELECT initcap(ename) "NAME" , length(ename) "LENENAME" from emp;

--18. EMP���̺��� ����� �̸��� Ŀ�̼��� ����ϵ�, Ŀ�̼��� å������ ���� ����� Ŀ�̼��� ��no commission������ ����϶�.
SELECT * from emp;
SELECT ename, comm, nvl(comm,0) from emp;
