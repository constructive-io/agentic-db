-- Deploy: schemas/agent_db_status_private/trigger_fns/tg_upd_achv
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_private/schema
-- requires: schemas/agent_db_status_private/procedures/upsert_achve/procedure



CREATE FUNCTION "agent_db_status_private".tg_upd_achv ()
  RETURNS TRIGGER
  AS
$EOFCODE$
DECLARE
BEGIN
    PERFORM "agent_db_status_private".upsert_achve(NEW.actor_id, NEW.name, NEW.count);
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent_db_status_private".tg_upd_achv TO authenticated;

