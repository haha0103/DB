--���� 1
SELECT * from dept;
--����2
SELECT * from emp;
SELECT job, empno, ename,hiredate from emp;
--����3
SELECT DISTINCT job from emp;
SELECT job from emp UNION SELECT job from emp;
--����4
SELECT * from emp;
SELECT ename, sal from emp where sal>=1850;
--����5
SELECT * from emp;
SELECT ename, empno from emp where empno=7566;
--����6
SELECT * from emp;
SELECT ename, sal from emp where sal<=1500 or sal>=2850;
--����7
SELECT * from emp;
SELECT ename, job, hiredate from emp where hiredate>81/02/20 and hiredate<81/05/01;
--����8
SELECT ename, deptno from emp where deptno=10 or deptno=30 union all SELECT ename,deptno from emp;
