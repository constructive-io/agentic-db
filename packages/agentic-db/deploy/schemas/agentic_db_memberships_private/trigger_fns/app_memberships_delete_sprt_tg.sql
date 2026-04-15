-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_delete_sprt_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table


CREATE FUNCTION agentic_db_memberships_private.app_memberships_delete_sprt_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_num_updated int;
BEGIN
  DELETE FROM agentic_db_memberships_private.app_memberships_sprt
  WHERE
    actor_id = OLD.actor_id;
  RETURN OLD;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

