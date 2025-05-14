--2025�� 4�� 14�� 1�� Select ��������

--���̺� ���� �� ������ ����, ���� ���� 11p~13ps

1. �μ����̺�(DEPT)�� ��� �����͸� ����϶�.
select * from dept;

2. EMP���̺��� �� ����� ����, �����ȣ, �̸�, �Ի����� ����϶�.
select * from emp;
select job, empno, ename, hiredate from emp;

3. EMP���̺��� ������ ����ϵ�, �� �׸�(ROW)�� �ߺ����� �ʰ� ����϶�.
select distinct(job) from emp;
 
4. EMP���̺��� �޿��� 2850 �̻��� ����� �̸� �� �޿��� ����϶�.
select ename, sal from emp where sal>=2850;


5. EMP���̺��� �����ȣ�� 7566�� ����� �̸� �� �μ���ȣ�� ����϶�.
select ename, deptno from emp where empno=7566;

6. EMP���̺��� �޿��� 1500�̻� 2850������ ������ ������ �ʴ� ��� ����� �̸� �� �޿��� ����϶�.
select ename, sal from emp where not sal>=1500 and sal<=2850; 

7. EMP���̺��� 1981�� 2�� 20��~ 1981�� 5�� 1�Ͽ� �Ի��� ����� �̸�, ���� �� �Ի����� ����ϵ�, �Ի����� �������� �ؼ� ������������ �����϶�.
select ename, job, hiredate from emp where hiredate>='1981/2/20' and hiredate<='1981/5/1' order by hiredate;
select ename, job, hiredate from emp where hiredate between '1981/2/20' and '1981/5/1' order by hiredate;


8. EMP���̺��� 10�� �� 30�� �μ��� ���ϴ� ��� ����� �̸��� �μ� ��ȣ�� ����ϵ�, �̸��� ���ĺ������� �����϶�.
select ename, deptno from emp where deptno=10 or deptno=30 order by ename;


9. EMP���̺��� 10�� �� 30�� �μ��� ���ϴ� ��� ��� �� �޿��� 1500�� �Ѵ� ����� �̸� �� �޿��� ����϶�.(�� �÷����� ���� employee �� Monthly Salary�� �����Ͻÿ�)
select ename "employee", sal"Monthly Salary", deptno from emp where deptno in(10,30) and sal>1500;

10. EMP���̺��� �����ڰ� ���� ��� ����� �̸� �� ������ ����϶�.
select * from emp; 
select ename, job from emp where mgr is null;

11. EMP���̺��� Ŀ�̼��� �޴� ��� ����� �̸�, �޿� �� Ŀ�̼��� ����ϵ�, �޿��� �������� ������������ �����϶�.
-- select ename, sal, comm from emp where not comm is null order by sal desc;
select ename, sal, comm from emp where  comm is not null order by sal desc;

12. EMP���̺��� �̸��� �� ��° ���ڰ� A�� ��� ����� �̸��� ����϶�.
select ename from emp where ename like '__A%';

13. EMP���̺��� �̸��� L�� �� �� ���� �μ� 30�� �����ִ� ����� �̸��� ����϶�.
select *from emp;
select ename, deptno from emp where ename like '%L%L%' and deptno=30;

14. EMP���̺��� ������ Clerk �Ǵ� Analyst�̸鼭 �޿��� 1000, 3000, 5000 �� �ƴ� ��� ����� �̸�, ���� �� �޿��� ����϶�.


15. EMP���̺��� �����ȣ, �̸�, �޿� �׸��� 15% �λ�� �޿��� ������ ǥ���ϵ� �÷����� New Salary�� �����Ͽ� ����϶�.


16. 15�� ������ ������ �����Ϳ��� �޿� �λ��(�� �޿����� ���� �޿��� �� ��)�� �߰��ؼ� ����϶�. �÷����� Increase�� �϶�.


17. EMP���̺��� ��� ����� �̸�(ù ���ڴ� �빮�ڷ�, ������ ���ڴ� �ҹ��ڷ� ǥ��) �� �̸� ���̸� ǥ���ϴ� ������ �ۼ��ϰ� �÷� ��Ī�� ���� ��NAME���� ��LENENAME������ �Ͻÿ�.


18. EMP���̺��� ����� �̸��� Ŀ�̼��� ����ϵ�, Ŀ�̼��� å������ ���� ����� Ŀ�̼��� ��no commission������ ����϶�.
SELECT * from emp;
SELECT ename, comm, nvl(to_char(comm),'no commission') from emp;