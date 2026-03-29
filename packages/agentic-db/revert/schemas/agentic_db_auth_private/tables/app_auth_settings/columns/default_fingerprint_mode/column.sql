-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  DROP COLUMN default_fingerprint_mode RESTRICT;


