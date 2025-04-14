--p28
SELECT * from emp;
--테이블 구조
desc emp;
SELECT deptno from emp;
      --중복 제거
SELECT DISTINCT deptno from emp;
                          --정렬  필드 이름도 된데    
SELECT job, ename from emp order by 1,2;
SELECT DISTINCT job, ename from emp; -- 필드가 두개여서 안된다했어 (and 같은건가?)

--연결 연산자
SELECT job, ename from emp; 
SELECT job||ename from emp;
                                  -- 필드이름
SELECT ename||' ''s job is '||job "NAME AND JOB" from emp;

--연습 1
SELECT * from student;
SELECT name||'''s ID: '||ID||', WEIGHT is '||weight||'kg' "ID AND WEIGHT"  from student; 

--연습2
SELECT * from emp;
SELECT ename||'('||job||') , '||ename||''||job||''''  from emp;

--연습3
SELECT ename||'''s sal is $'||sal "Name and Sal" FROM emp;
