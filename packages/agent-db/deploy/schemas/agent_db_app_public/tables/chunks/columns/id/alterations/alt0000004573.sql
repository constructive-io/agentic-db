-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/id/alterations/alt0000004573
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/id/column
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column



ALTER TABLE "agent_db_app_public".chunks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

