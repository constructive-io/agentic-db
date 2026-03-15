-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-private/procedures/member_incompleted_step/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/table



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-status-private".member_incompleted_step (
  step text,
  entity_id uuid,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  DELETE FROM "agent-os-1773546821914-39f1cb9b-status-public".org_steps s
    WHERE s.actor_id = member_incompleted_step.actor_id
    AND s.entity_id = member_incompleted_step.entity_id
    AND s.name = step;
  DELETE FROM "agent-os-1773546821914-39f1cb9b-status-public".org_achievements a
    WHERE a.actor_id = member_incompleted_step.actor_id
    AND a.entity_id = member_incompleted_step.entity_id
    AND a.name = step;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-status-private".member_incompleted_step TO authenticated;

