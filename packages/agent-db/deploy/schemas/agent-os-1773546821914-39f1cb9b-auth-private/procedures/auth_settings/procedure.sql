-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/procedures/auth_settings/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-auth-private".auth_settings ()
  RETURNS "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings
AS $CODEZ$
DECLARE
  settings "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings;
BEGIN
    SELECT * FROM "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings LIMIT 1 INTO settings;
    RETURN settings;
END;
$CODEZ$
LANGUAGE plpgsql STABLE SECURITY DEFINER;

