--데이터 구조
desc emp;
select*from emp;
select ename,job from emp;
--테이블 구조
desc professor;
select * from professor; --한글 에러가 날 수도 있음
select name, 'good morning~~!' "굿~" from professor;

select dname,'it''s deptno:',deptno "DEAME AND DEPTNO"from dept;
select dname,'it''s deptno:'"인사",deptno "DEAME AND DEPTNO"from dept;
select dname,'it''s deptno:'||deptno "DEAME AND DEPTNO"from dept;
select dname,q'[,it's deptno:]',deptno "DEAME AND DEPTNO"from dept;

select profno, name, pay from professor; --별칭 사용전
select profno "Prof'no", name AS "Prof's NAME", pay prof_Pay from professor; --별칭 사용 후
