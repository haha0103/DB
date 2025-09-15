-- 비등가 JOin
-- 예 2)
SELECT * from student;
SELECT * from score;
SELECT * from hakjum;

SELECT s.name "STU_NAME", sc.total "SCORE", h.grade "CRE" from student s, score sc, hakjum h
where s.studno = sc.studno and sc.total >= h.min_point and sc.total <= h.max_point;

SELECT s.name "STU_NAME", sc.total "SCORE", h.grade "CRE" from student s, score sc, hakjum h
where s.studno = sc.studno and sc.total between h.min_point and h.max_point;

-- OUTER JOIN(아우터 조인) vs INNER JOIN(이너 조인)
-- 예 1)
SELECT * from student;
SELECT * from professor;

SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno = p.profno(+);
--                        ↑outer join 아닌 것도 다 출력 (있는 것만 출력하는거는 inner join)  
 
-- 예 2)
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno(+) = p.profno;
-- =
SELECT s.name "STU_NAME", p.name "PROF_NAME" from professor p LEFT OUTER JOIN student s
on s.profno = p.profno;

SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno(+) = p.profno
union -- 두개의 테이블을 합치고 중복된 얘들은 제외(union all: 싹다 그냥 다 전부 중복된 것들도 전부전부)
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno = p.profno(+);