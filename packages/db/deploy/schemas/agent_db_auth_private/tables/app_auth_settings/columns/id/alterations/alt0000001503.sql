-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/id/alterations/alt0000001503
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/id/column



ALTER TABLE "agent_db_auth_private".app_auth_settings 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

