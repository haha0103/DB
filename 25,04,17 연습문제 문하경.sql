--巩力 1
SELECT * from dept;
--巩力2
SELECT * from emp;
SELECT job, empno, ename,hiredate from emp;
--巩力3
SELECT DISTINCT job from emp;
SELECT job from emp UNION SELECT job from emp;
--巩力4
SELECT * from emp;
SELECT ename, sal from emp where sal>=1850;
--巩力5
SELECT * from emp;
SELECT ename, empno from emp where empno=7566;
--巩力6
SELECT * from emp;
SELECT ename, sal from emp where sal<=1500 or sal>=2850;
--巩力7
SELECT * from emp;
SELECT ename, job, hiredate from emp where hiredate>81/02/20 and hiredate<81/05/01;
--巩力8
SELECT ename, deptno from emp where deptno=10 or deptno=30 union all SELECT ename,deptno from emp;
