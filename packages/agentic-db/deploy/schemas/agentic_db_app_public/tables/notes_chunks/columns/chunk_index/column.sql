-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table


ALTER TABLE "agentic_db_app_public".notes_chunks 
  ADD COLUMN chunk_index integer;

