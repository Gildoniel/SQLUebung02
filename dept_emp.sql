############################ ORACLE SQL ############################

drop table emp;
drop table dept;
drop table salgrade;

CREATE TABLE DEPT (
 DEPTNO              NUMBER(2) CONSTRAINT DEPT_PRIMARY_KEY PRIMARY KEY,
 DNAME               varchar2(14),
 LOC                 varchar2(13));

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

CREATE TABLE EMP (
 EMPNO               NUMBER(4) CONSTRAINT EMP_PRIMARY_KEY PRIMARY KEY , 
 ENAME               varchar2(10),
 JOB                 varchar2(9),
 MGR                 NUMBER(4) CONSTRAINT EMP_SELF_KEY REFERENCES EMP (EMPNO),
 HIREDATE            DATE,
 SAL                 NUMBER(7,2),
 COMM                NUMBER(7,2),
 DEPTNO              NUMBER(2) NOT NULL CONSTRAINT EMP_FOREIGN_KEY REFERENCES DEPT (DEPTNO));

 /* disable constraint until we have the data in */
alter table emp disable constraint EMP_SELF_KEY;

INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,'17-12-80',800,NULL,20);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,'20-02-81',1600,300,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,'22-02-81',1250,500,30);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,'2-04-81',2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,'28-09-81',1250,1400,30);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,'1-05-81',2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,'9-06-81',2450,NULL,10);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,'09-12-82',3000,NULL,20);
INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,'17-11-81',5000,NULL,10);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,'8-08-81',1500,0,30);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,'12-01-83',1100,NULL,20);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,'3-12-81',950,NULL,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,'3-12-81',3000,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,'23-01-82',1300,NULL,10);


alter table emp enable constraint EMP_SELF_KEY;
  
CREATE TABLE SALGRADE (
 GRADE               NUMBER,
 LOSAL               NUMBER,
 HISAL               NUMBER);
 
INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);


############################ MySQL ############################

drop table emp;
drop table dept;
drop table salgrade;

CREATE TABLE DEPT (
 DEPTNO              INTEGER(2) PRIMARY KEY,
 DNAME               VARCHAR(14),
 LOC                 VARCHAR(13));

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

CREATE TABLE EMP (
 EMPNO               INTEGER(4) PRIMARY KEY, 
 ENAME               VARCHAR(10),
 JOB                 VARCHAR(9),
 MGR                 INTEGER(4),
 HIREDATE            DATE,
 SAL                 DECIMAL(7,2),
 COMM                DECIMAL(7,2),
 DEPTNO              INTEGER(2) NOT NULL,
 FOREIGN KEY (MGR) REFERENCES EMP (EMPNO),
 FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO));

INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,'80-12-17',800,NULL,20);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,'81-02-20',1600,300,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,'81-02-22',1250,500,30);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,'81-04-2',2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,'81-09-28',1250,1400,30);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,'81-05-1',2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,'81-06-9',2450,NULL,10);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,'82-12-09',3000,NULL,20);
INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,'81-11-17',5000,NULL,10);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,'81-08-8',1500,0,30);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,'83-01-12',1100,NULL,20);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,'81-12-3',950,NULL,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,'81-12-3',3000,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,'82-01-23',1300,NULL,10);
  
CREATE TABLE SALGRADE (
 GRADE               INTEGER,
 LOSAL               INTEGER,
 HISAL               INTEGER);
 
INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);
