-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/id/alterations/alt0000001660
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx



ALTER TABLE "agentic_db_app_public".habits 
    ALTER COLUMN id SET DEFAULT uuidv7();

