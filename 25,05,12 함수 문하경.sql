--2025/05/12 
--형 변환 함수
SELECT '3'+'3' from dual;
SELECT '3+3' from dual;
SELECT 2+'A' from dual; --숫자처럼 샌긴 문자만 변환 가능 ERRERO

--to_char(): 날짜->문자
SELECT * from student;
--to_number(): 문자->숫자
SELECT to_number('5') from dual;
SELECT to_number('A') from dual; --ERERO
SELECT ascii('A') from dual;

--to_date(): 문자->날짜
SELECT to_date('24/4/28')+1 from dual;
SELECT '24/4/28'+1 from dual; --ERERO

--일반 함수

--NVL(칼럼, 치환할 값) null
SELECT ename, comm, nvl(comm,0), nvl(comm,100) from emp where deptno=30;

SELECT empno, ename, sal, comm, nvl(comm+sal,sal*0) from emp where deptno=30;

--DECODE(A,B,T,F)
SELECT * from professor;
SELECT deptno, name, DECODE(deptno,101,'Computer Engineering','AAA') "DNAME" from professor;

--CASE case 조건 when 결과1 than 출력1 when 결과2 than 출력2 else 출력3 end "컬럼명" 
SELECT empno, ename, sal,
CASE when sal BETWEEN 1 and 1000 then 'level 1'
     when sal BETWEEN 1001 and 2000 then 'level 2'
     when sal BETWEEN 2001 and 3000 then 'level 3'
     when sal BETWEEN 3001 and 4000 then 'level 4'
            else 'level 5' end "LEVEL" from emp;