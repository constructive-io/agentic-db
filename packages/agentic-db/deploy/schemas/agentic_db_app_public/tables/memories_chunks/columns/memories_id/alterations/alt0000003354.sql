-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/alterations/alt0000003354
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.memories_chunks 
  ALTER COLUMN memories_id SET NOT NULL;

