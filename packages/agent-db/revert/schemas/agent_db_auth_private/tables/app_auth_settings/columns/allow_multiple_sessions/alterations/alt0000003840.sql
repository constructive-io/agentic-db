-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000003840


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN allow_multiple_sessions DROP NOT NULL;


