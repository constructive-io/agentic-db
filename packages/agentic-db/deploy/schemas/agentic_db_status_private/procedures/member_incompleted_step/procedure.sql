-- Deploy: schemas/agentic_db_status_private/procedures/member_incompleted_step/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table


CREATE FUNCTION agentic_db_status_private.member_incompleted_step(
  IN step text,
  IN entity_id uuid,
  IN actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $_PGFN_$
BEGIN
  DELETE FROM agentic_db_status_public.org_steps AS s
  WHERE
    (s.actor_id = member_incompleted_step.actor_id AND s.entity_id = member_incompleted_step.entity_id) AND s.name = member_incompleted_step.step;
  DELETE FROM agentic_db_status_public.org_achievements AS a
  WHERE
    (a.actor_id = member_incompleted_step.actor_id AND a.entity_id = member_incompleted_step.entity_id) AND a.name = member_incompleted_step.step;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

