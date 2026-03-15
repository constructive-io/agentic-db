-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-private/trigger_fns/app_memberships_profile_sync_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-profiles-private".app_memberships_profile_sync_tg ()
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
        FROM "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles
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

