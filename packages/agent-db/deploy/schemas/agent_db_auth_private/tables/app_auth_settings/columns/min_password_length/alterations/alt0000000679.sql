-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000000679
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/min_password_length/column


ALTER TABLE agent_db_auth_private.app_auth_settings 
  ALTER COLUMN min_password_length SET NOT NULL;

