-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/org_memberships_delete_sprt_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table


CREATE FUNCTION agentic_db_memberships_private.org_memberships_delete_sprt_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_num_updated int;
BEGIN
  DELETE FROM agentic_db_memberships_private.org_memberships_sprt
  WHERE
    actor_id = OLD.actor_id AND entity_id = OLD.entity_id;
  DELETE FROM agentic_db_memberships_public.org_members
  WHERE
    actor_id = OLD.actor_id AND entity_id = OLD.entity_id;
  RETURN OLD;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

