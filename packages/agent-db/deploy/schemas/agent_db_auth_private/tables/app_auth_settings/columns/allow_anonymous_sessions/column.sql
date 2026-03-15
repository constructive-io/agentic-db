-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_anonymous_sessions/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ADD COLUMN allow_anonymous_sessions boolean;

