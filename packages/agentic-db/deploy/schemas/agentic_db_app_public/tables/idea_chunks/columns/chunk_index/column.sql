-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/updated_at/alterations/alt0000004659


ALTER TABLE agentic_db_app_public.idea_chunks 
  ADD COLUMN chunk_index int;

