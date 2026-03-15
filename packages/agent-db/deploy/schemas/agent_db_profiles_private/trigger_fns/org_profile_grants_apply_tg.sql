-- Deploy: schemas/agent_db_profiles_private/trigger_fns/org_profile_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_private/schema



CREATE FUNCTION agent_db_profiles_private.org_profile_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE AND NEW.profile_id IS NOT NULL) THEN
        UPDATE agent_db_memberships_public.org_memberships
            SET profile_id = NEW.profile_id
        WHERE id = NEW.membership_id;
    ELSIF (NEW.is_grant IS FALSE) THEN
        UPDATE agent_db_memberships_public.org_memberships
            SET profile_id = NULL
        WHERE id = NEW.membership_id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

