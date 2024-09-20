with recursive multiplication_table(base, val, resul) as (
  select 5 as base, 1 as val, 5 as resul
  union
  select 5 as base, val + 1, (val + 1) * base from multiplication_table
    where val < 100
)
select * from multiplication_table;
