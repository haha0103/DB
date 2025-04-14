--instr:특정 문자 위치 추출               ↓세번째'-'위치
SELECT 'A-B-C-D', instr('A-B-C-D','-',1,3) "INSTR" from dual;
SELECT * FROM student;
SELECT name, tel, instr(tel,'3'), profno from student where deptno1=101;

--lpad:왼쪽으로 특정 문자 채움
SELECT name, id, lpad(id,10,'*') from student where deptno1=201;
SELECT name, id, lpad(id,10,'12345') from student where deptno1=201;
SELECT lpad(ename,9,'123456789') from emp Where deptno=10;
--rpad:오른쪽으로 특정 문자 채움
SELECT name, id, Rpad(id,10,'*') from student where deptno1=201;
SELECT Rpad(ename,10,'-') from emp where deptno=10;
SELECT Rpad(ename,9,'1234567789') from emp where deptno=10;
SELECT Rpad(ename,9,substr('1234567789',lengthb(ename)+1)) from emp where deptno=10;

--ltrim:주어진 문자열에서 왼쪽 특정 문자 삭제
SELECT ename from emp where deptno=10;
SELECT ltrim(ename,'C') from emp where deptno=10;
--rtrim:주어진 문자열에서 오른쪽 특정 문자 삭제
SELECT ename from emp where deptno=10;
SELECT rtrim(ename,'R') from emp where deptno=10;

--replace:A를 B로 치환함
--                     ename에 첫번째에서 두글자를 ↓로바꿔라  
SELECT ename, replace(ename, substr(ename,1,2),'**')from emp where deptno=10;

--문제1
SELECT ename, replace(ename, substr(ename,2,2),'--') from emp;
--문제2
SELECT name,jumin, replace(jumin,substr(jumin,7,7),'-/-/-/-') "REPLACE" from student where deptno1=101;

