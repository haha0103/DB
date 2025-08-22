--89P
--4) 먼저emp테이블에 아래의 두건의 데이터를 입력하신 후 작업하세요.
--Emp 테이블을 사용하여 아래의 화면과 같이 부서별로 직급별로 급여 합계 결과를 출력하세요.
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

--5) emp 테이블을 사용하여 직원들의 급여와 전체급여의 누적 급여금액이 아래와 같도록 출력하세요. 
-- 단, 급여를 오름차순으로 정렬해서 출력하세요.
SELECT * from emp;
SELECT sum(sal) from emp;
--over(ORDER by sal): 각 항목 별로 누적합 건별로 출력
SELECT deptno, ename, sal, sum(sal)over(ORDER by sal) "Total" from emp;
--over(): 전체합계로 모두 출력
SELECT deptno, ename, sal, sum(sal)over() "Total" from emp;

--6) fruit 테이블을 아래와 같은 형태로 출력하세요.
--얘 좀 이상함 max, sum 다 필요없는데...
SELECT * from fruit;
SELECT max(sum(decode(name,'apple',100))) "APPLE",
       max(sum(decode(name,'grape',200))) "GRAPE",
       max(sum(decode(name,'orange',300))) "ORANGE"
from fruit Group by name;