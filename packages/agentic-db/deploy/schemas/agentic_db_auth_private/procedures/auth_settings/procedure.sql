-- Deploy: schemas/agentic_db_auth_private/procedures/auth_settings/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_auth_private.auth_settings ()
  RETURNS agentic_db_auth_private.app_auth_settings
AS $CODEZ$
DECLARE
  settings agentic_db_auth_private.app_auth_settings;
BEGIN
    SELECT * FROM agentic_db_auth_private.app_auth_settings LIMIT 1 INTO settings;
    RETURN settings;
END;
$CODEZ$
LANGUAGE plpgsql STABLE SECURITY DEFINER;

