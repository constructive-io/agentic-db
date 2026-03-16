-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000001514




ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN default_credential_duration DROP DEFAULT;



