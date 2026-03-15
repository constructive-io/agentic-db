-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/min_password_length/column


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  DROP COLUMN min_password_length RESTRICT;


