-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/created_at/alterations/alt0000002389
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/created_at/column


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  ALTER COLUMN created_at SET DEFAULT now();

