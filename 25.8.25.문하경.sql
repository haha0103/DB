--7) student 테이블의Tel 컬럼을 사용하여 아래와 같이 지역별 인원수와 전체대비 차지하는 비율을 출력하세요.
SELECT * from student;
--                       ↓   비율 구하는 식  ↓(내갯수/전체갯수*100)
SELECT count(*)||'EA('||count(*)/count(*)*100||'%)' "TOTAL",
--         이게 if였음?
       count(decode(substr(tel,1,instr(tel,')')-1),'02',0))||'EA('||
       count(decode(substr(tel,1,instr(tel,')')-1),'02',0))/count(*)*100||'%)' "SEOUL",
       count(decode(substr(tel,1,instr(tel,')')-1),'031',0))||'EA('||
       count(decode(substr(tel,1,instr(tel,')')-1),'031',0))/count(*)*100||'%)' "GYEONGGI",
       count(decode(substr(tel,1,instr(tel,')')-1),'051',0))||'EA('||
       count(decode(substr(tel,1,instr(tel,')')-1),'051',0))/count(*)*100||'%)' "BUSAN",
       count(decode(substr(tel,1,instr(tel,')')-1),'052',0))||'EA('||
       count(decode(substr(tel,1,instr(tel,')')-1),'052',0))/count(*)*100||'%)' "ULSAN",
       count(decode(substr(tel,1,instr(tel,')')-1),'053',0))||'EA('||
       count(decode(substr(tel,1,instr(tel,')')-1),'053',0))/count(*)*100||'%)' "DARGU",
       count(decode(substr(tel,1,instr(tel,')')-1),'055',0))||'EA('||
       count(decode(substr(tel,1,instr(tel,')')-1),'055',0))/count(*)*100||'%)' "GYEONGNAM"
from student;

--8) emp 테이블을 사용하여 아래와 같이 부서별로 급여 누적 합계가 나오도록 출력하세요.( 단 부서 번호로 오름차순 출력하세요. )
SELECT * from emp; 
--                                       ↓그룹별로             누적합계
SELECT deptno, ename, sal, sum(sal) over(PARTITION BY deptno ORDER BY sal) "TOTAL" from emp;

--9) emp 테이블을 사용하여 아래와 같이 각 사원의 급여액이 전체 직원 급여총액에서 몇%의 비율을 차지하는지 출력하세요. 
--단, 급여 비중이 높은 사람이 먼저 출력되도록하세요.
SELECT deptno, ename, sal, sum(sal) OVER() "TOTAL_SAL", round(sal/sum(sal)over()*100,2) "%"
from emp ORDER by 5 DESC;
--                                                            ↓비율 구하는 함수
SELECT deptno, ename, sal, sum(sal) OVER() "TOTAL_SAL", round(ratio_to_report(sal)over()*100,2) "%"
from emp ORDER by 5 DESC;

--10) emp 테이블을 조회하여 아래와 같이 각 직원들의 급여가 해당 부서 합계금액에서 몇%의 비중을 차지하는지를 출력하세요. 
--단, 부서번호를 기준으로 오름차순으로 출력하세요.
SELECT deptno, ename, sal, sum(sal) OVER(PARTITION by deptno) "SUM_DEPT", 
round(ratio_to_report(sal)over(PARTITION by deptno)*100,2) "%"
from emp ORDER by 1,2 DESC;

--11) loan 테이블을 사용하여1 000번 지점의 대출 내역을 출력하되 대출일자, 대출종목코드, 대출건수, 대출총액, 누적 대출금액을 아래와 같이 출력하세요.
SELECT * from loan;
SELECT l_date "대출일자", l_code "대출종목코드", l_qty "대출건수", l_total "대출총액",
sum(l_total) over(order by l_date) "누적대출금액" from loan where l_store=1000;

--12)loan 테이블을 사용하여 전체 지점의 대출종목코드, 대출지점, 대출일자, 대출건수, 대출액을 대출코드와 대출지점별로 누적 합계를 구하세요.
SELECT l_code "대출종목코드", l_store "대출지점", l_date "대출일자", l_qty "대출건수", l_total "대출액",
sum(l_total) over(PARTITION BY l_code, l_store order BY l_date) "누적대출금액" from loan;

--13) loan 테이블을 조회하여 1000번 지점의 대출내역을 대출코드별로 합쳐서 대출일자, 대출구분코드, 대출건수, 대출총액, 코드별 누적 대출금액을 아래와 같이 출력하세요.
SELECT  l_date "대출일자", l_code "대출종목코드", l_qty "대출건수", l_total "대출총액",
 sum(l_total) over(PARTITION BY l_code order BY l_total) "누적대출금액"
 from loan where l_store=1000;
