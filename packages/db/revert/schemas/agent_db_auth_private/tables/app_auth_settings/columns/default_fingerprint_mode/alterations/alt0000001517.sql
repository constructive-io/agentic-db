-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000001517




ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN default_fingerprint_mode DROP DEFAULT;



