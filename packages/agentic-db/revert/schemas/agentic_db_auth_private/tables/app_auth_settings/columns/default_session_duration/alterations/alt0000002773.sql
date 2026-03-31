-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000002773


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN default_session_duration DROP NOT NULL;


