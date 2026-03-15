-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-private/trigger_fns/member_tg_upd_achv
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-private/procedures/member_upsert_achve/procedure



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-status-private".member_tg_upd_achv ()
  RETURNS TRIGGER
  AS
$EOFCODE$
DECLARE
BEGIN
    PERFORM "agent-os-1773550873753-b6c4a3e1-status-private".member_upsert_achve(NEW.actor_id, NEW.entity_id, NEW.name, NEW.count);
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-status-private".member_tg_upd_achv TO authenticated;

