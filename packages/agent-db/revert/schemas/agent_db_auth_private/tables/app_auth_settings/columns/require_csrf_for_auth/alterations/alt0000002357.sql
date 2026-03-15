-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000002357




ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN require_csrf_for_auth DROP DEFAULT;



