-- Deploy: schemas/agent_db_auth_private/procedures/auth_settings/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema



CREATE FUNCTION "agent_db_auth_private".auth_settings ()
  RETURNS "agent_db_auth_private".app_auth_settings
AS $CODEZ$
DECLARE
  settings "agent_db_auth_private".app_auth_settings;
BEGIN
    SELECT * FROM "agent_db_auth_private".app_auth_settings LIMIT 1 INTO settings;
    RETURN settings;
END;
$CODEZ$
LANGUAGE plpgsql STABLE SECURITY DEFINER;

