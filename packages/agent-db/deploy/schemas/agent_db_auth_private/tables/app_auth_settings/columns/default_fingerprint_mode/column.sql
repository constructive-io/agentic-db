-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


ALTER TABLE agent_db_auth_private.app_auth_settings 
  ADD COLUMN default_fingerprint_mode text;

