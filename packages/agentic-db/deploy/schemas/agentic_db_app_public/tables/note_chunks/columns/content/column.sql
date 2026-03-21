-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/chunk_index/alterations/alt0000003826


ALTER TABLE agentic_db_app_public.note_chunks 
  ADD COLUMN content text;

