-- Deploy: schemas/agentic_db_status_private/procedures/completed_step/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table


CREATE FUNCTION agentic_db_status_private.completed_step(
  IN step text,
  IN actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $_PGFN_$
BEGIN
  IF completed_step.actor_id IS NOT NULL THEN
    INSERT INTO agentic_db_status_public.app_steps (
      name,
      actor_id,
      count
    )
    VALUES
      (completed_step.step, completed_step.actor_id, 1);
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

