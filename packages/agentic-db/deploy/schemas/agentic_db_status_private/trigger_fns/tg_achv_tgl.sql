-- Deploy: schemas/agentic_db_status_private/trigger_fns/tg_achv_tgl
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_private/procedures/completed_step/procedure
-- requires: schemas/agentic_db_status_private/procedures/incompleted_step/procedure


CREATE FUNCTION agentic_db_status_private.tg_achv_tgl() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  is_null boolean;
  task_name text;
BEGIN
  IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
    task_name := (tg_argv)[1]::text;
    EXECUTE format('SELECT ($1).%s IS NULL', (tg_argv)[0]) INTO is_null USING NEW;
    IF is_null IS TRUE THEN
      PERFORM agentic_db_status_private.incompleted_step(task_name);
    ELSE
      PERFORM agentic_db_status_private.completed_step(task_name);
    END IF;
    RETURN NEW;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

