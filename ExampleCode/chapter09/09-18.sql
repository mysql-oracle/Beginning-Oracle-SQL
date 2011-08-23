select   x.deptno
,        avg(x.msal) avg_sal
from     employees x       
group by x.deptno;       

WITH g AS
      (select   x.deptno
       ,        avg(x.msal) avg_sal
       from     employees x
       group by x.deptno)
select *
from   g;

WITH g AS
     (select   x.deptno
      ,        avg(x.msal) avg_sal
      from     employees x
      group by x.deptno)
select e.ename, e.init, e.msal
from   employees e
      join      g
      using (deptno)
where  e.msal > g.avg_sal;

