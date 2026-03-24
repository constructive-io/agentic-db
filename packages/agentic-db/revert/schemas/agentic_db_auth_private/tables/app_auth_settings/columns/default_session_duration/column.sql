-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_session_duration/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  DROP COLUMN default_session_duration RESTRICT;


