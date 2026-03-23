-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  DROP COLUMN max_failed_login_attempts RESTRICT;


