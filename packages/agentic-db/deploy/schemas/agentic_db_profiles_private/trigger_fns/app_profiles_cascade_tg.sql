-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/app_profiles_cascade_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema



CREATE FUNCTION "agentic_db_profiles_private".app_profiles_cascade_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (OLD.permissions IS DISTINCT FROM NEW.permissions) THEN
        UPDATE "agentic_db_memberships_public".app_memberships
            SET profile_id = profile_id
        WHERE profile_id = NEW.id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

