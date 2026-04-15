-- Deploy: schemas/agentic_db_status_private/procedures/member_completed_step/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table


CREATE FUNCTION agentic_db_status_private.member_completed_step(
  IN step text,
  IN entity_id uuid,
  IN actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $_PGFN_$
BEGIN
  INSERT INTO agentic_db_status_public.org_steps (
    name,
    actor_id,
    entity_id,
    count
  )
  VALUES
    (member_completed_step.step, member_completed_step.actor_id, member_completed_step.entity_id, 1);
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

