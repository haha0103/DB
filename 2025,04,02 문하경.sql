--p28
SELECT * from emp;
--���̺� ����
desc emp;
SELECT deptno from emp;
      --�ߺ� ����
SELECT DISTINCT deptno from emp;
                          --����  �ʵ� �̸��� �ȵ�    
SELECT job, ename from emp order by 1,2;
SELECT DISTINCT job, ename from emp; -- �ʵ尡 �ΰ����� �ȵȴ��߾� (and �����ǰ�?)

--���� ������
SELECT job, ename from emp; 
SELECT job||ename from emp;
                                  -- �ʵ��̸�
SELECT ename||' ''s job is '||job "NAME AND JOB" from emp;

--���� 1
SELECT * from student;
SELECT name||'''s ID: '||ID||', WEIGHT is '||weight||'kg' "ID AND WEIGHT"  from student; 

--����2
SELECT * from emp;
SELECT ename||'('||job||') , '||ename||''||job||''''  from emp;

--����3




