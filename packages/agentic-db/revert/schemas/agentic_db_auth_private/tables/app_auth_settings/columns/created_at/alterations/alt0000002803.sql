-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/created_at/alterations/alt0000002803


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN created_at DROP DEFAULT;


