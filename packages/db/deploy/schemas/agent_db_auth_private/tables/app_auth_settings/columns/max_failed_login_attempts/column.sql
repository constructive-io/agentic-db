-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ADD COLUMN max_failed_login_attempts int;

