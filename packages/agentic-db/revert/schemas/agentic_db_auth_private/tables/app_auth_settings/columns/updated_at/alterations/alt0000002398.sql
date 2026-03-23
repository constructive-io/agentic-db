-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/updated_at/alterations/alt0000002398


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN updated_at DROP DEFAULT;


