-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/created_at/column


ALTER TABLE agent_db_auth_private.app_auth_settings 
  DROP COLUMN created_at RESTRICT;


