-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000002395




ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN enable_cookie_auth DROP DEFAULT;



