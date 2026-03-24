-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000002000




ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN lockout_duration DROP DEFAULT;



