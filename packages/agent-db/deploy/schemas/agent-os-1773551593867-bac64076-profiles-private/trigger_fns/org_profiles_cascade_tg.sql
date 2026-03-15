-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/org_profiles_cascade_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-profiles-private".org_profiles_cascade_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (OLD.permissions IS DISTINCT FROM NEW.permissions) THEN
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".org_memberships
            SET profile_id = profile_id
        WHERE profile_id = NEW.id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

