-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000000673
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column


ALTER TABLE agent_db_auth_private.app_auth_settings 
  ALTER COLUMN max_failed_login_attempts SET NOT NULL;

