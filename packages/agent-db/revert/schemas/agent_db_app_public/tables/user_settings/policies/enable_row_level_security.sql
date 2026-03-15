-- Revert: schemas/agent_db_app_public/tables/user_settings/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".user_settings 
  DISABLE ROW LEVEL SECURITY;


