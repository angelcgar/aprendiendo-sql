
with recursive countdown(val) as (
  select 1 as val
  union
  select val +1 from countdown where val < 10
)
select * from countdown;

with recursive countdown(val) as (
  select 5 as val
  union
  select val -1 from countdown where val > 1
)
select * from countdown;

