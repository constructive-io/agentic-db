-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000003844




ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN max_failed_login_attempts DROP DEFAULT;



