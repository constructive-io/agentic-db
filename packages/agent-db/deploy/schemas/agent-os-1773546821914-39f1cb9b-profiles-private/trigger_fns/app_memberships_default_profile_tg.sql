-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/app_memberships_default_profile_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-profiles-private".app_memberships_default_profile_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_default_profile_id uuid;
BEGIN
    IF (NEW.profile_id IS NULL) THEN
        SELECT id INTO v_default_profile_id
        FROM "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles
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

