-- Deploy: schemas/agent_db_status_private/trigger_fns/member_tg_upd_achv
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_private/schema
-- requires: schemas/agent_db_status_private/procedures/member_upsert_achve/procedure



CREATE FUNCTION "agent_db_status_private".member_tg_upd_achv ()
  RETURNS TRIGGER
  AS
$EOFCODE$
DECLARE
BEGIN
    PERFORM "agent_db_status_private".member_upsert_achve(NEW.actor_id, NEW.entity_id, NEW.name, NEW.count);
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent_db_status_private".member_tg_upd_achv TO authenticated;

