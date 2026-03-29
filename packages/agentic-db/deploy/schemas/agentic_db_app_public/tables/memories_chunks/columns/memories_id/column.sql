-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.memories_chunks 
  ADD COLUMN memories_id uuid;

