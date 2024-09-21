
create or replace function max_raise_2( empl_id int )
returns numeric(8, 2) as $$

DECLARE
  employee_job_id int;
  current_salary NUMERIC(8,2);

  job_max_salary NUMERIC(8,2);
  possible_raise NUMERIC(8,2);

begin

  SELECT job_id, salary
  INTO employee_job_id, current_salary
  from employees WHERE employee_id = empl_id;

  SELECT max_salary into job_max_salary FROM jobs WHERE job_id = employee_job_id;

  possible_raise = job_max_salary - current_salary;

  return possible_raise;
	
  IF (possible_raise < 0 ) THEN
	raise EXCEPTION 'Persona exedida %', empl_id;
	possible_raise = 0;
  END IF;

end;

$$
language plpgsql;

SELECT employee_id, first_name, salary
FROM employees WHERE employee_id = 206;





























