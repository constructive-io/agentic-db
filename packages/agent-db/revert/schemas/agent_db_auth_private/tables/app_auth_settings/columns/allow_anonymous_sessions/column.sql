-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_anonymous_sessions/column


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  DROP COLUMN allow_anonymous_sessions RESTRICT;


