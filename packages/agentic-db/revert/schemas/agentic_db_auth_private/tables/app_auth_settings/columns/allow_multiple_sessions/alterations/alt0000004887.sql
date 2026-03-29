-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000004887


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN allow_multiple_sessions DROP NOT NULL;


