-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-private/procedures/member_completed_step/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-status-private".member_completed_step (
  step text,
  entity_id uuid,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
  INSERT INTO "agent-os-1773547105079-c748b4c3-status-public".org_steps ( name, actor_id, entity_id, count )
  VALUES ( step, actor_id, entity_id, 1 );
$EOFCODE$ LANGUAGE sql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-status-private".member_completed_step TO authenticated;

