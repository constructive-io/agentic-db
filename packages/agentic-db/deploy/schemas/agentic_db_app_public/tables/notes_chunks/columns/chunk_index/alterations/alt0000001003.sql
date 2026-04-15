-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/columns/chunk_index/alterations/alt0000001003
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".notes_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

