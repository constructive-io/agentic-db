-- Deploy: schemas/agent_db_app_public/tables/files/columns/id/alterations/alt0000004564
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/id/column
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding/column



ALTER TABLE "agent_db_app_public".files 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

