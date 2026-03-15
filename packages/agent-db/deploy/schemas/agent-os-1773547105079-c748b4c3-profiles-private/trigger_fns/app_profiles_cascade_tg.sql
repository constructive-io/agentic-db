-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-private/trigger_fns/app_profiles_cascade_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-profiles-private".app_profiles_cascade_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (OLD.permissions IS DISTINCT FROM NEW.permissions) THEN
        UPDATE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships
            SET profile_id = profile_id
        WHERE profile_id = NEW.id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

