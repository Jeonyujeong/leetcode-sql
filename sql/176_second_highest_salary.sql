select max(e.salary) as SecondHighestSalary
from (
    select e.id
         , dense_rank() over(order by salary desc) as rnum
         , e.salary
      from Employee e) e
where rnum = 2
