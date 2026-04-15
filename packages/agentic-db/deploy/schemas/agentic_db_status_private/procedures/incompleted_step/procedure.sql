-- Deploy: schemas/agentic_db_status_private/procedures/incompleted_step/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table


CREATE FUNCTION agentic_db_status_private.incompleted_step(
  IN step text,
  IN actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $_PGFN_$
BEGIN
  IF incompleted_step.actor_id IS NOT NULL THEN
    DELETE FROM agentic_db_status_public.app_steps AS s
    WHERE
      s.actor_id = incompleted_step.actor_id AND s.name = incompleted_step.step;
    DELETE FROM agentic_db_status_public.app_achievements AS a
    WHERE
      a.actor_id = incompleted_step.actor_id AND a.name = incompleted_step.step;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

