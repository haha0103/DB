SELECT * from emp;
--ù���ڸ� �빮��                                       �鰡 10�� ��鸸 ���
SELECT ename, initcap(ename)"INITCAP" from emp WHERE deptno=10;
--���� �ҹ���                          ���� �빮��
SELECT ename, lower(ename) "LOWER", upper(ename) "UPPER" FROM emp WHERE deptno=10;
--���� ���
SELECT ename, length(ename), lengthb(ename),deptno from emp WHERE deptno=20;
SELECT 'ȫ�浿', length('ȫ�浿'), lengthb('ȫ�浿') from dual; --�ѱ� 3����Ʈ/ dual���� �ӽ÷� �������� �����ΰ�?
--���� ����
SELECT substr('abcde',3,2) "3,2", substr('abcde',-3,2) "-3,2", substr('abcde',-4,4) from dual;
--�л� ���̺��� jumin Į���� �̿��� ������ 101���� �л�����  �̸��� ������� �Ϸ��� ��¥ ���
SELECT * from student;
SELECT name, substr(jumin,3,4)-1 "Birthday-1" from student WHERE deptno1=101;--0����