--CH01 Oracle&DataBase
--relation database:테이블과 테이블 사이의 관계를 통해서 데이터 저장,검색.
--DBMS:oracle,mysql,ms-sql

 SELECT* FROM salgrade;
 SELECT* FROM department;
 select*from salgrade;

--table create
create table employee(
 eno NUMBER(4) primary key,
 ename VARCHAR2(10),
 job VARCHAR2(9),
 manager number(4),
 hiredate date,
 salary number(7,2),
 commission number(7,2),
 dno number(2) REFERENCES department
);

 CREATE TABLE department(
 dno number(2) primary KEY,
 dname varchar2(14),
 loc varchar2(13)
 ); 
 
 CREATE TABLE salgrade(
 grade number,
 lowsal number,
 highsal number
 );
 

--department
insert into department values(20, 'research','dallas');--employee가 행을 생성하기 위해 외래 칼럼인 department 데이터가 반드시 존재해야함
insert into department VALUES (10, 'ACCOUNTING','NEW YORK');
insert into department VALUES (30, 'SALES','CHICAGO');
insert into department values(40,'OPERATIONS','BOSTON');

--employee
insert INTO employee values(7369,'SMITH','CLERK',7902,TO_DATE('17-12-1980','dd-mm-yyyy'),800,null,20);
insert into employee values(7499,'ALLEN','SALESMAN',7698,TO_DATE('20-02-1981','dd-mm-yyyy'),1600,300,30);
insert into employee values(7521,'WARD','SALESMAN',7698,to_date('22-02-1981','dd-mm-yyyy'),1250,500,30);
insert into employee values(7566,'JONES','MANAGER',	7839,to_date('02-04-1981','dd-mm-yyyy'),2975,null,20);
insert into employee values(7654,'MARTIN','SALESMAN',7698,to_date('28-09-1981','dd-mm-yyyy'),1250,1400,30);
insert into employee values(7698,'BLAKE','MANAGER',7839,to_date('01-05-1981','dd-mm-yyyy'),2850,null,30);
insert into employee values(7782,'CLARK','MANAGER',7839,to_date('09-06-1981','dd-mm-yyyy'),2450,null,10);
insert into employee values(7788,'SCOTT','ANALYST',7566,to_date('19-04-1981','dd-mm-yyyy'),3000,null,20);
insert into employee values(7839,'KING','PRESIDENT',null,to_date('17-11-1981','dd-mm-yyyy'),5000,null,10);
insert into employee values(7844,'TURNER','SALESMAN',7698,to_date('08-09-1981','dd-mm-yyyy'),1500,0,30);
insert into employee values(7876,'ADAMS','CLERK',7788,to_date('23-05-1987','dd-mm-yyyy'),1100,null,20);
insert into employee values(7900,'JAMES','CLERK',7698,to_date('03-12-1981','dd-mm-yyyy'),950,null,30);
insert into employee values(7902,'FORD','ANALYST',7566,to_date('03-12-1981','dd-mm-yyyy'),3000,null,20);
insert into employee values(7934,'MILLER','CLERK',7782,to_date('23-01-1982','dd-mm-yyyy'),1300,null,10);

--salgrade
insert into salgrade values(1,700,1200);
insert into salgrade values(2,1201,1400);
insert into salgrade values(3,1401,2000);
insert into salgrade values(4,2001,3000);
insert into salgrade values(5,3001,9999);
