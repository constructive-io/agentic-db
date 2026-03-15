-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


ALTER TABLE agent_db_auth_private.app_auth_settings 
  ADD COLUMN enable_cookie_auth boolean;

