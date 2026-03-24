-- Deploy: schemas/agentic_db_status_private/procedures/member_completed_step/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_status_private.member_completed_step (
  step text,
  entity_id uuid,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
  INSERT INTO agentic_db_status_public.org_steps ( name, actor_id, entity_id, count )
  VALUES ( step, actor_id, entity_id, 1 );
$EOFCODE$ LANGUAGE sql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_status_private.member_completed_step TO authenticated;

