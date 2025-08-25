--7) student ���̺���Tel �÷��� ����Ͽ� �Ʒ��� ���� ������ �ο����� ��ü��� �����ϴ� ������ ����ϼ���.
SELECT * from student;
--                       ��   ���� ���ϴ� ��  ��(������/��ü����*100)
SELECT count(*)||'EA('||count(*)/count(*)*100||'%)' "TOTAL",
--         �̰� if����?
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

--8) emp ���̺��� ����Ͽ� �Ʒ��� ���� �μ����� �޿� ���� �հ谡 �������� ����ϼ���.( �� �μ� ��ȣ�� �������� ����ϼ���. )
SELECT * from emp; 
--                                       ��׷캰��             �����հ�
SELECT deptno, ename, sal, sum(sal) over(PARTITION BY deptno ORDER BY sal) "TOTAL" from emp;

--9) emp ���̺��� ����Ͽ� �Ʒ��� ���� �� ����� �޿����� ��ü ���� �޿��Ѿ׿��� ��%�� ������ �����ϴ��� ����ϼ���. 
--��, �޿� ������ ���� ����� ���� ��µǵ����ϼ���.
SELECT deptno, ename, sal, sum(sal) OVER() "TOTAL_SAL", round(sal/sum(sal)over()*100,2) "%"
from emp ORDER by 5 DESC;
--                                                            ����� ���ϴ� �Լ�
SELECT deptno, ename, sal, sum(sal) OVER() "TOTAL_SAL", round(ratio_to_report(sal)over()*100,2) "%"
from emp ORDER by 5 DESC;

--10) emp ���̺��� ��ȸ�Ͽ� �Ʒ��� ���� �� �������� �޿��� �ش� �μ� �հ�ݾ׿��� ��%�� ������ �����ϴ����� ����ϼ���. 
--��, �μ���ȣ�� �������� ������������ ����ϼ���.
SELECT deptno, ename, sal, sum(sal) OVER(PARTITION by deptno) "SUM_DEPT", 
round(ratio_to_report(sal)over(PARTITION by deptno)*100,2) "%"
from emp ORDER by 1,2 DESC;

--11) loan ���̺��� ����Ͽ�1 000�� ������ ���� ������ ����ϵ� ��������, ���������ڵ�, ����Ǽ�, �����Ѿ�, ���� ����ݾ��� �Ʒ��� ���� ����ϼ���.
SELECT * from loan;
SELECT l_date "��������", l_code "���������ڵ�", l_qty "����Ǽ�", l_total "�����Ѿ�",
sum(l_total) over(order by l_date) "��������ݾ�" from loan where l_store=1000;

--12)loan ���̺��� ����Ͽ� ��ü ������ ���������ڵ�, ��������, ��������, ����Ǽ�, ������� �����ڵ�� ������������ ���� �հ踦 ���ϼ���.
SELECT l_code "���������ڵ�", l_store "��������", l_date "��������", l_qty "����Ǽ�", l_total "�����",
sum(l_total) over(PARTITION BY l_code, l_store order BY l_date) "��������ݾ�" from loan;

--13) loan ���̺��� ��ȸ�Ͽ� 1000�� ������ ���⳻���� �����ڵ庰�� ���ļ� ��������, ���ⱸ���ڵ�, ����Ǽ�, �����Ѿ�, �ڵ庰 ���� ����ݾ��� �Ʒ��� ���� ����ϼ���.
SELECT  l_date "��������", l_code "���������ڵ�", l_qty "����Ǽ�", l_total "�����Ѿ�",
 sum(l_total) over(PARTITION BY l_code order BY l_total) "��������ݾ�"
 from loan where l_store=1000;
