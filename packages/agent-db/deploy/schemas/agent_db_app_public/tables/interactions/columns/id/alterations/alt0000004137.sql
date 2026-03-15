-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/id/alterations/alt0000004137
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/id/column
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column



ALTER TABLE "agent_db_app_public".interactions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

