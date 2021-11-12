--CH02.데이터 조회
SELECT* FROM tab;--생성된 table들 이름 출력

--문자열 데이터 조회:''사용,대소문자 구분
select eno,ename,salary from employee where ename='ford';--소문자 ford는 없음
select eno,ename,salary from employee where ename='FORD';--칼럼에 들은 값들은 대소문자 구별함
select eno,ename,salary from employee where ename="FORD";--""는 쓸 수 없음


--1.비교연산자
select*from employee where hiredate <='1982/01/01';--82/01/01이전은 모두 출력해라


--2.논리연산자(and,or,not)
--예)2000~3000급여를 받는 직원 정보를 출력해라, 2000이하 or 3000이상의 직원을 출력해라
select* from employee where salary >=2000 and salary<=3000;
select*from employee where salary<=2000 or salary>=3000;


--3.between A and B 연산자: A와 B사이의 해당하는 값만 출력
select* from employee where salary between 2000 and 3000;--between:두 값의 사이이면 참으로 출력
select*from employee where salary not between 1000 and 1500;


--4.in( , , , , ):괄호 안의 값이 하나라도 있으면 참으로 출력
select*from employee where commission in(300,400,500);


--5.not연산자
select*from employee where commission not in(300,500,1400);--조건을 부정하는 방법1
select*from employee where commission <>300 and commission <>500 and commission <>1400;--조건을 부정하는 방법2

--6.like(%,_):%는 해당 문자가 포함할때 씀 A% A로 시작하는 데이터값,%A% A를 포함하는 데이터값, %A A가 끝에 오는 데이터값. _는 자리를 표시할때 __A 세번째 오는 A를 출력하겠다
--중요 포인트!!!!! 검색하는 데이터값은 대소문자를 구분한다!!!!!!
select*from employee where ename='F';--F로 된 칼럼값 출력
select*from employee where ename like 'F%';--레코드값 중 F로 시작되는 포함된 값 출력
select*from employee where ename like '%A%';--레코드값 중 A를 담고있는 값 출력
select*from employee where ename not like '%A%';
select*from employee where ename like '_A%';--A가 두번째에 있는 값 출력


--7.null:0이 아닌 알 수 없는 어떤 값. 값이 있긴 한데 그 값을 알 수 없는 현상. 연산, 할당, 비교 불가능. ex) null+10,null=10,null>10 불가능
--select*FROM employee where commission=null;  XXXX실행 불가능
select*from employee where commission is null;--실행 가능. null값을 가지고 있는 레코드값 출력
select*from employee where commission is not null;--null이 아닌 값을 출력
--select*from employee where commission <> null;  XXXX실행 불가능
SELECT* FROM employee where manager is null;--manager칼럼이 null인 사람은 누구인가



--8.order by
--ascending:오름차순, descending:내림차순
SELECT
    * FROM employee ORDER by commission;--null은 가장 나중에 배치. 오름차순 생략됨. 생략은 오름차순만 가능
SELECT
    * FROM employee ORDER by commission desc;
SELECT
    * FROM employee ORDER by commission desc,eno asc;--앞에 내림차순에 우선적용되고 그 안에서 내린차순 결정
    

