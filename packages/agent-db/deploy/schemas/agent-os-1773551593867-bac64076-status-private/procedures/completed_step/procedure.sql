-- Deploy: schemas/agent-os-1773551593867-bac64076-status-private/procedures/completed_step/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-status-private".completed_step (
  step text,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  IF (actor_id IS NOT NULL) THEN 
    INSERT INTO "agent-os-1773551593867-bac64076-status-public".app_steps ( name, actor_id, count )
    VALUES ( step, actor_id, 1 );
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-status-private".completed_step TO authenticated;

