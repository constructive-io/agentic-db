-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/columns/chunk_index/alterations/alt0000000979
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/columns/chunk_index/column



ALTER TABLE "agentic_db_app_public".venues_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

