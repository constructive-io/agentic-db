-- Deploy: schemas/agent_db_profiles_private/trigger_fns/org_profile_definition_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_private/schema



CREATE FUNCTION "agent_db_profiles_private".org_profile_definition_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN
        INSERT INTO "agent_db_profiles_public".org_profile_permissions (profile_id, permission_id)
        VALUES (NEW.profile_id, NEW.permission_id)
        ON CONFLICT (profile_id, permission_id) DO NOTHING;
    ELSE
        DELETE FROM "agent_db_profiles_public".org_profile_permissions
        WHERE profile_id = NEW.profile_id
        AND permission_id = NEW.permission_id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

