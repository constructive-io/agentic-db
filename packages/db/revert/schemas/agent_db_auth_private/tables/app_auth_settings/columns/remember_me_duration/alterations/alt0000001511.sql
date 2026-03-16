-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000001511




ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN remember_me_duration DROP DEFAULT;



