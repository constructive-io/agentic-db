-- Deploy: schemas/agent_db_app_public/tables/rules/columns/id/alterations/alt0000004272
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/id/column
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding/column



ALTER TABLE "agent_db_app_public".rules 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

