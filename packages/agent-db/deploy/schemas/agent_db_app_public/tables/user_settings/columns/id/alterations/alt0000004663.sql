-- Deploy: schemas/agent_db_app_public/tables/user_settings/columns/id/alterations/alt0000004663
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/id/column
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000004660



ALTER TABLE "agent_db_app_public".user_settings 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

