-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/policies/enable_row_level_security


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  DISABLE ROW LEVEL SECURITY;


