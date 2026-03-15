-- Deploy: schemas/agent-os-1773551593867-bac64076-status-private/procedures/incompleted_step/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-status-private".incompleted_step (
  step text,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  IF (incompleted_step.actor_id IS NOT NULL) THEN 
    DELETE FROM "agent-os-1773551593867-bac64076-status-public".app_steps s
      WHERE s.actor_id = incompleted_step.actor_id
      AND s.name = step;
    DELETE FROM "agent-os-1773551593867-bac64076-status-public".app_achievements a
      WHERE a.actor_id = incompleted_step.actor_id
      AND a.name = step;
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-status-private".incompleted_step TO authenticated;

