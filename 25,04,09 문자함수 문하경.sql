SELECT * from emp;
--첫글자만 대문자                                       ↓가 10인 얘들만 출력
SELECT ename, initcap(ename)"INITCAP" from emp WHERE deptno=10;
--전부 소문자                          전부 대문자
SELECT ename, lower(ename) "LOWER", upper(ename) "UPPER" FROM emp WHERE deptno=10;
--길이 출력
SELECT ename, length(ename), lengthb(ename),deptno from emp WHERE deptno=20;
SELECT '홍길동', length('홍길동'), lengthb('홍길동') from dual; --한글 3바이트/ dual에서 임시로 가져오는 느낌인가?
--글자 추출
SELECT substr('abcde',3,2) "3,2", substr('abcde',-3,2) "-3,2", substr('abcde',-4,4) from dual;
--학생 테이블에서 jumin 칼럼을 이용해 전공이 101번인 학생들의  이름과 생년월일 하루전 날짜 출력
SELECT * from student;
SELECT name, substr(jumin,3,4)-1 "Birthday-1" from student WHERE deptno1=101;--0생략