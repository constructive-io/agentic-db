-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/column


ALTER TABLE agent_db_auth_private.app_auth_settings 
  DROP COLUMN enable_cookie_auth RESTRICT;


