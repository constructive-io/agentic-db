-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/updated_at/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  DROP COLUMN updated_at RESTRICT;


