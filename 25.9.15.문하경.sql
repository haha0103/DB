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

-- �� 3)
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno(+) = p.profno
union -- �ΰ��� ���̺��� ��ġ�� �ߺ��� ����� ����(union all: �ϴ� �׳� �� ���� �ߺ��� �͵鵵 ��������)
SELECT s.name "STU_NAME", p.name "PROF_NAME" from student s, professor p 
where s.profno = p.profno(+);

-- join ������: table A join tlable B on ����
SELECT s.name "STU_NAME", p.name "PROF_NAME" 
from student s join professor p on s.profno = p.profno;

SELECT s.name "STU_NAME", p.name "PROF_NAME" 
from student s LEFT OUTER JOIN professor p on s.profno = p.profno;

SELECT s.name "STU_NAME", p.name "PROF_NAME" 
from student s RIGHT OUTER JOIN professor p on s.profno = p.profno;
--  =
SELECT s.name "STU_NAME", p.name "PROF_NAME" 
from professor p LEFT OUTER JOIN student s on s.profno = p.profno;

-- full outer join
SELECT s.name "STU_NAME", p.name "PROF_NAME" 
from student s FULL OUTER JOIN professor p on s.profno = p.profno;

-- SELF JOIN
SELECT * from emp;
SELECT empno, ename, mgr from emp;
SELECT e1.ename "ENAME", e1.empno, e2.mgr, e2.ename "MGR_ENAME"
from emp e1, emp e2 where e1.empno = e2.mgr;




