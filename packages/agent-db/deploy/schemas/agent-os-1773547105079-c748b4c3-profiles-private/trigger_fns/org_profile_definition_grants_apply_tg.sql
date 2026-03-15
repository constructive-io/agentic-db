-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-private/trigger_fns/org_profile_definition_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-private/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-profiles-private".org_profile_definition_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN
        INSERT INTO "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_permissions (profile_id, permission_id)
        VALUES (NEW.profile_id, NEW.permission_id)
        ON CONFLICT (profile_id, permission_id) DO NOTHING;
    ELSE
        DELETE FROM "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_permissions
        WHERE profile_id = NEW.profile_id
        AND permission_id = NEW.permission_id;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

