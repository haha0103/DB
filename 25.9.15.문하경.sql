-- �� JOin
-- �� 2)
SELECT * from student;
SELECT * from score;
SELECT * from hakjum;

SELECT s.name "STU_NAME", sc.total "SCORE", h.grade "CRE" from student s, score sc, hakjum h
where s.studno = sc.studno and sc.total >= h.min_point and sc.total <= h.max_point;

SELECT s.name "STU_NAME", sc.total "SCORE", h.grade "CRE" from student s, score sc, hakjum h
where s.studno = sc.studno and sc.total between h.min_point and h.max_point;

-- OUTER JOIN(�ƿ��� ����) vs INNER JOIN(�̳� ����)
-- �� 1)
SELECT * from student;
SELECT * from professor;

SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno = p.profno(+);
--                        ��outer join �ƴ� �͵� �� ��� (�ִ� �͸� ����ϴ°Ŵ� inner join)  
 
-- �� 2)
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno(+) = p.profno;
-- =
SELECT s.name "STU_NAME", p.name "PROF_NAME" from professor p LEFT OUTER JOIN student s
on s.profno = p.profno;

SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno(+) = p.profno
union -- �ΰ��� ���̺��� ��ġ�� �ߺ��� ����� ����(union all: �ϴ� �׳� �� ���� �ߺ��� �͵鵵 ��������)
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno = p.profno(+);