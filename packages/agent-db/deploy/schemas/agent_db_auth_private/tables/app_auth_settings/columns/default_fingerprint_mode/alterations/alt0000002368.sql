-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000002368
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN default_fingerprint_mode SET NOT NULL;

