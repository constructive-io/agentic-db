-- Deploy: schemas/agent_db_status_private/procedures/member_incompleted_step/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_private/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/table



CREATE FUNCTION agent_db_status_private.member_incompleted_step (
  step text,
  entity_id uuid,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  DELETE FROM agent_db_status_public.org_steps s
    WHERE s.actor_id = member_incompleted_step.actor_id
    AND s.entity_id = member_incompleted_step.entity_id
    AND s.name = step;
  DELETE FROM agent_db_status_public.org_achievements a
    WHERE a.actor_id = member_incompleted_step.actor_id
    AND a.entity_id = member_incompleted_step.entity_id
    AND a.name = step;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agent_db_status_private.member_incompleted_step TO authenticated;

