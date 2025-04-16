--문제 1
SELECT * from dept;
--문제2
SELECT * from emp;
SELECT job, empno, ename,hiredate from emp;
--문제3
SELECT DISTINCT job from emp;
SELECT job from emp UNION SELECT job from emp;
--문제4
SELECT * from emp;
SELECT ename, sal from emp where sal>=1850;
--문제5
SELECT * from emp;
SELECT ename, empno from emp where empno=7566;
--문제6
SELECT * from emp;
SELECT ename, sal from emp where sal<=1500 or sal>=2850;
--문제7 못풀었음
SELECT * from emp;
SELECT ename, job, hiredate from emp where hiredate>81/02/20 and hiredate<81/05/01;
--문제8
SELECT ename, deptno from emp where deptno=10 or deptno=30 union all SELECT ename,deptno from emp;
