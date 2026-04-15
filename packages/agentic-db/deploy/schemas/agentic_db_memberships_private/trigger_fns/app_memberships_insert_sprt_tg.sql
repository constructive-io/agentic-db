-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_insert_sprt_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table


CREATE FUNCTION agentic_db_memberships_private.app_memberships_insert_sprt_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF NEW.is_owner IS true THEN
    new.is_admin := true;
    new.is_approved := true;
    new.is_verified := true;
    new.is_disabled := false;
    new.is_banned := false;
  END IF;
  new.is_active := ((NEW.is_approved IS true AND NEW.is_verified IS true) AND NEW.is_disabled IS false) AND NEW.is_banned IS false;
  IF NEW.is_active IS TRUE THEN
    INSERT INTO agentic_db_memberships_private.app_memberships_sprt (
      is_owner,
      is_admin,
      permissions,
      actor_id
    )
    VALUES
      (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id);
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

