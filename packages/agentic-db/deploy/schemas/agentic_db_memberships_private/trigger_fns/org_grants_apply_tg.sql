-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/org_grants_apply_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE FUNCTION agentic_db_memberships_private.org_grants_apply_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF NEW.is_grant IS TRUE THEN
    UPDATE agentic_db_memberships_public.org_memberships SET
    granted = granted | NEW.permissions
    WHERE
      actor_id = NEW.actor_id AND entity_id = NEW.entity_id;
  ELSE
    UPDATE agentic_db_memberships_public.org_memberships SET
    granted = granted & (~NEW.permissions)
    WHERE
      actor_id = NEW.actor_id AND entity_id = NEW.entity_id;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

