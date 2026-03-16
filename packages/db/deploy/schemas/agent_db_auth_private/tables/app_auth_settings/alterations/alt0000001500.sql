-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/alterations/alt0000001500
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agent_db_auth_private".app_auth_settings 
  DISABLE ROW LEVEL SECURITY;

