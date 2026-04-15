-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/app_memberships_profile_sync_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table


CREATE FUNCTION agentic_db_profiles_private.app_memberships_profile_sync_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_profile_permissions bit(24);
BEGIN
  IF NEW.is_admin IS TRUE OR NEW.is_owner IS TRUE THEN
    RETURN NEW;
  END IF;
  IF NEW.profile_id IS NOT NULL THEN
    SELECT permissions
    FROM agentic_db_profiles_public.app_profiles
    WHERE
      id = NEW.profile_id INTO v_profile_permissions;
    IF FOUND AND v_profile_permissions IS NOT NULL THEN
      new.permissions := NEW.granted | v_profile_permissions;
    ELSE
      new.permissions := NEW.granted;
    END IF;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

