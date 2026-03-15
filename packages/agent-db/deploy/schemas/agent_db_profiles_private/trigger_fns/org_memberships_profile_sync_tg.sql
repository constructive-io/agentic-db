-- Deploy: schemas/agent_db_profiles_private/trigger_fns/org_memberships_profile_sync_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_private/schema



CREATE FUNCTION agent_db_profiles_private.org_memberships_profile_sync_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_profile_permissions bit(24);
BEGIN
    IF (NEW.is_admin IS TRUE OR NEW.is_owner IS TRUE) THEN
        RETURN NEW;
    END IF;
    IF (NEW.profile_id IS NOT NULL) THEN
        SELECT permissions INTO v_profile_permissions
        FROM agent_db_profiles_public.org_profiles
        WHERE id = NEW.profile_id;
        IF (FOUND AND v_profile_permissions IS NOT NULL) THEN
            NEW.permissions := NEW.granted | v_profile_permissions;
        ELSE
            NEW.permissions := NEW.granted;
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

