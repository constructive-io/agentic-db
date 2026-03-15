-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-private/trigger_fns/app_profile_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-profiles-private".app_profile_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE AND NEW.profile_id IS NOT NULL) THEN
        UPDATE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships
            SET profile_id = NEW.profile_id
        WHERE id = NEW.membership_id;
    ELSIF (NEW.is_grant IS FALSE) THEN
        UPDATE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships
            SET profile_id = NULL
        WHERE id = NEW.membership_id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

