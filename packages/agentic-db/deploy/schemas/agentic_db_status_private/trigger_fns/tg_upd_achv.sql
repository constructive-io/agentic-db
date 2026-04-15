-- Deploy: schemas/agentic_db_status_private/trigger_fns/tg_upd_achv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_private/procedures/upsert_achve/procedure


CREATE FUNCTION agentic_db_status_private.tg_upd_achv() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM agentic_db_status_private.upsert_achve(NEW.actor_id, NEW.name, NEW.count);
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

