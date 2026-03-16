-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_credential_duration/alterations/alt0000000662




ALTER TABLE "agentic_db_auth_private".app_auth_settings 
    ALTER COLUMN default_credential_duration DROP DEFAULT;



