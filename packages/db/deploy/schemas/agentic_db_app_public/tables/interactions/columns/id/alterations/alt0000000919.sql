-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/id/alterations/alt0000000919
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/notes/columns/embedding/column



ALTER TABLE "agentic_db_app_public".interactions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

