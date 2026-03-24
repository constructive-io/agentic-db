-- Deploy: schemas/agentic_db_status_private/procedures/incompleted_step/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_status_private.incompleted_step (
  step text,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  IF (incompleted_step.actor_id IS NOT NULL) THEN 
    DELETE FROM agentic_db_status_public.app_steps s
      WHERE s.actor_id = incompleted_step.actor_id
      AND s.name = step;
    DELETE FROM agentic_db_status_public.app_achievements a
      WHERE a.actor_id = incompleted_step.actor_id
      AND a.name = step;
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_status_private.incompleted_step TO authenticated;

