-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/org_profile_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-profiles-private".org_profile_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE AND NEW.profile_id IS NOT NULL) THEN
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".org_memberships
            SET profile_id = NEW.profile_id
        WHERE id = NEW.membership_id;
    ELSIF (NEW.is_grant IS FALSE) THEN
        UPDATE "agent-os-1773551593867-bac64076-memberships-public".org_memberships
            SET profile_id = NULL
        WHERE id = NEW.membership_id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

