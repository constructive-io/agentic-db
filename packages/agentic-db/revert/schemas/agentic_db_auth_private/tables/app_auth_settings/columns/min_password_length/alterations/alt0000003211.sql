-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000003211




ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN min_password_length DROP DEFAULT;



