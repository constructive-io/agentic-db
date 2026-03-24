-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/app_memberships_default_profile_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema



CREATE FUNCTION "agentic_db_profiles_private".app_memberships_default_profile_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_default_profile_id uuid;
BEGIN
    IF (NEW.profile_id IS NULL) THEN
        SELECT id INTO v_default_profile_id
        FROM "agentic_db_profiles_public".app_profiles
        WHERE is_default = true
        LIMIT 1;
        IF (FOUND) THEN
            NEW.profile_id := v_default_profile_id;
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

