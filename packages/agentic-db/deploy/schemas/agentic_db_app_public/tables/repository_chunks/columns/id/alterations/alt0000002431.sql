-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/columns/id/alterations/alt0000002431
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/id/column



ALTER TABLE "agentic_db_app_public".repository_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

