1)
select * from emp; 
2)
select distinct job from emp; 
3)
 select * from emp order by sal asc; 
4)
select * from emp order by deptno asc,job desc; 
5)
select distinct job from emp order by job desc; 
6)
Select * from emp where empno in ( select mgr from emp) ;
7)
 select * from emp where hiredate < ('01-jan-81');
8)
select empno ,ename ,sal,sal/30,12*sal annsal from emp order by annsal asc; 
9)
select empno, ename, sal,
months_between(sysdate,hiredate)/12 Exp
from emp where job = 'MANAGER' ;
10)
select empno,ename,sal,exp from emp where mgr ='7369';
11)
select * from emp where comm> sal;
12)
select * from emp where (sal/30) >100;
13)
 select * from emp where job = 'CLERK' or job = 'ANALYST' order by job 
desc;
14)
 select * from emp where hiredate in ('01-may-81','03-dec-81','17-dec-81','19-jan-80') order by hiredate asc;
15)
select * from emp where deptno = 10 or deptno = 20 ;
16)
 select * from emp where hiredate between '01-jan-81' and '31-dec-81';
 17)
 select * from emp where 12*sal between 22000 and 45000;
 18)
 select ename from emp where length (ename) = 5; 
 19)
  select ename from emp where ename like 'S%' and length (ename) = 5; 
 20)
 select * from emp where length(ename) = 4 and ename like '__R%';
 21)
  select * from emp where length(ename) = 5 and ename like 'S%H';
22)
select * from emp where to_char (hiredate,'mon') = 'jan'; 
23)
 select * from emp where ename like '%LL%';
24)
 select * from emp where deptno not in (20);
25)
Select * from emp where job not in (‘PRESIDENT’,’MANAGER’) order 
by sal asc;
26)
select * from emp where empno not like ‘78%’;
27)
28)
select * from emp where to_char (hiredate,’MON’) not in (‘MAR’);
29)
select * from emp where job =‘CLERK’ and deptno = 20; 
30)
 select * from emp where to_char(hiredate,’YYYY’) = ‘1981’ and (deptno =30 
or deptno =10) ;
31)
 select * from emp where ename = ‘SMITH’ ; 
32)
 select loc from emp e , dept d where e.ename = ‘SMITH’ and e.deptno = 
d.deptno ;
