CREATE TABLE t_readonly
(no number,
name VARCHAR2(10));

SELECT * from t_readonly;

ALTER TABLE t_readonly read only;

INSERT into t_readonly VALUES(2,'BBB');

ALTER table t_readonly read WRITE;


CREATE table vt1 (
col1 NUMBER,
col2 NUMBER,
col3 NUMBER GENERATED ALWAYS as (col1+col2));
SELECT * from vt1;
INSERT into vt1(col1, col2) VALUES (1,2);

UPDATE vt1 set col1=5;
SELECT * from vt1;

ALTER table vt1 add(
col4 GENERATED ALWAYS as((col1*12)+col2));


SELECT column_name, data_type, data_default
from user_tab_columns 
where table_name = 'VT1';