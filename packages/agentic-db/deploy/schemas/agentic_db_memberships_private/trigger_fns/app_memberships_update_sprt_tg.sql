-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_update_sprt_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table


CREATE FUNCTION agentic_db_memberships_private.app_memberships_update_sprt_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_num_updated int;
BEGIN
  IF NEW.is_owner IS true THEN
    new.is_admin := true;
    new.is_approved := true;
    new.is_verified := true;
    new.is_disabled := false;
    new.is_banned := false;
  END IF;
  new.is_active := ((NEW.is_approved IS true AND NEW.is_verified IS true) AND NEW.is_disabled IS false) AND NEW.is_banned IS false;
  IF NEW.is_active IS FALSE THEN
    DELETE FROM agentic_db_memberships_private.app_memberships_sprt
    WHERE
      actor_id = NEW.actor_id;
  ELSE
    INSERT INTO agentic_db_memberships_private.app_memberships_sprt (
      is_owner,
      is_admin,
      permissions,
      actor_id
    )
    VALUES
      (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id)
    ON CONFLICT (actor_id) DO UPDATE SET
    is_owner = EXCLUDED.is_owner, is_admin = EXCLUDED.is_admin, permissions = EXCLUDED.permissions;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

