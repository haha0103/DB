--2025년 4월 14일 1장 Select 연습문제

--1. 부서테이블(DEPT)의 모든 데이터를 출력하라.
SELECT * from dept;

--2. EMP테이블에서 각 사원의 직업, 사원번호, 이름, 입사일을 출력하라.
SELECT * from emp;
SELECT job, empno, ename,hiredate from emp;

--3. EMP테이블에서 직업을 출력하되, 각 항목(ROW)가 중복되지 않게 출력하라.
SELECT DISTINCT job from emp;
SELECT job from emp UNION SELECT job from emp;

--4. EMP테이블에서 급여가 2850 이상인 사원의 이름 및 급여를 출력하라.
SELECT * from emp;
SELECT ename, sal from emp where sal>=1850;


--5. EMP테이블에서 사원번호가 7566인 사원의 이름 및 부서번호를 출력하라.
SELECT * from emp;
SELECT ename, empno from emp where empno=7566;

--6. EMP테이블에서 급여가 1500이상 2850이하의 범위에 속하지 않는 모든 사원의 이름 및 급여를 출력하라.
SELECT * from emp;              --고침
SELECT ename, sal from emp where not sal>=1500 and sal<=2850;

--7. EMP테이블에서 1981년 2월 20일~ 1981년 5월 1일에 입사한 사원의 이름, 직업 및 입사일을 출력하되, 입사일을 기준으로 해서 오름차순으로 정렬하라.
SELECT * from emp;              --고침
SELECT ename, job, hiredate from emp where hiredate between '81/02/20' and '81/05/01' order by hiredate;
--asc: 오름차순 desc: 내림차순

--8. EMP테이블에서 10번 및 30번 부서에 속하는 모든 사원의 이름과 부서 번호를 출력하되, 이름을 알파벳순으로 정렬하라.
SELECT ename, deptno from emp where deptno=10 or deptno=30 union all SELECT ename,deptno from emp;

--9. EMP테이블에서 10번 및 30번 부서에 속하는 모든 사원 중 급여가 1500을 넘는 사원의 이름 및 급여를 출력하라.(단 컬럼명을 각각 employee 및 Monthly Salary로 지정하시오)
SELECT * from emp;
SELECT ename "employee", sal "Monthly Salary", deptno from emp where deptno=10 or deptno=30 and sal>=1500;

--10. EMP테이블에서 관리자가 없는 모든 사원의 이름 및 직위를 출력하라.
select * from emp;
SELECT ename, job from emp where mgr is null;

--11. EMP테이블에서 커미션을 받는 모든 사원의 이름, 급여 및 커미션을 출력하되, 급여를 기준으로 내림차순으로 정렬하라.
select ename, sal, comm from emp where comm is not null order by sal desc;

--12. EMP테이블에서 이름의 세 번째 문자가 A인 모든 사원의 이름을 출력하라.
SELECT ename from emp where ename like'__A%';

--13. EMP테이블에서 이름에 L이 두 번 들어가며 부서 30에 속해있는 사원의 이름을 출력하라.
--                                             (앞에있어L뒤도가느L다)
SELECT ename, deptno from emp where ename like '%L%L%' and deptno=30;

--14. EMP테이블에서 직업이 Clerk 또는 Analyst이면서 급여가 1000, 3000, 5000 이 아닌 모든 사원의 이름, 직업 및 급여를 출력하라.
SELECT * from emp;
SELECT ename, job, sal from emp 
where job in('CLERK','ANALYST') and sal not in(1000, 3000, 5000);

SELECT ename, job, sal from emp 
where (job='CLERK' or job='ANALYST') and (sal<>1000 and sal<>3000 and sal!=5000);

--15. EMP테이블에서 사원번호, 이름, 급여 그리고 15% 인상된 급여를 정수로 표시하되 컬럼명을 New Salary로 지정하여 출력하라.
--                          ↓반올림
SELECT empno, ename, sal, round(sal*1.15,0) "New Salary" from emp;

--16. 15번 문제와 동일한 데이터에서 급여 인상분(새 급여에서 이전 급여를 뺀 값)을 추가해서 출력하라. 컬럼명은 Increase로 하라.
SELECT empno, ename, sal, round(sal*1.15,0) "New Salary", round(sal*0.15) "Increase" from emp;

--17. EMP테이블에서 모든 사원의 이름(첫 글자는 대문자로, 나머지 글자는 소문자로 표시) 및 이름 길이를 표시하는 쿼리를 작성하고 컬럼 별칭을 각각 “NAME”과 “LENENAME”으로 하시오.
SELECT initcap(ename) "NAME" , length(ename) "LENENAME" from emp;

--18. EMP테이블에서 사원의 이름과 커미션을 출력하되, 커미션이 책정되지 않은 사원의 커미션은 ‘no commission’으로 출력하라.
SELECT * from emp;
SELECT ename, comm, nvl(comm,0) from emp;
