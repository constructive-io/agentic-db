-- Deploy: schemas/agentic_db_status_private/trigger_fns/member_tg_achv_bool
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_private/procedures/member_completed_step/procedure


CREATE FUNCTION agentic_db_status_private.member_tg_achv_bool() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  is_true boolean;
  task_name text;
  entity_id uuid;
BEGIN
  IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
    task_name := (tg_argv)[2]::text;
    EXECUTE format('SELECT ($1).%s IS TRUE', (tg_argv)[0]) INTO is_true USING NEW;
    EXECUTE format('SELECT ($1).%s', (tg_argv)[1]) INTO entity_id USING NEW;
    IF is_true IS TRUE THEN
      PERFORM agentic_db_status_private.member_completed_step(task_name, entity_id);
    END IF;
    RETURN NEW;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

