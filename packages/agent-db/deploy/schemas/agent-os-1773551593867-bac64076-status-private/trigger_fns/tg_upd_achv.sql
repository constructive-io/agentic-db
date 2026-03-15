-- Deploy: schemas/agent-os-1773551593867-bac64076-status-private/trigger_fns/tg_upd_achv
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-private/procedures/upsert_achve/procedure



CREATE FUNCTION "agent-os-1773551593867-bac64076-status-private".tg_upd_achv ()
  RETURNS TRIGGER
  AS
$EOFCODE$
DECLARE
BEGIN
    PERFORM "agent-os-1773551593867-bac64076-status-private".upsert_achve(NEW.actor_id, NEW.name, NEW.count);
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-status-private".tg_upd_achv TO authenticated;

