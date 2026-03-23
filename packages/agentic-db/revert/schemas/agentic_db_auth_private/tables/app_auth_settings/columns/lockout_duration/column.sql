-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/lockout_duration/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  DROP COLUMN lockout_duration RESTRICT;


