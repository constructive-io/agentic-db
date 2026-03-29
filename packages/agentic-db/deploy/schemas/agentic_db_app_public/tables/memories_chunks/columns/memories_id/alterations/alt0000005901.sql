-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/alterations/alt0000005901
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/columns/memories_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.memories_chunks 
  ALTER COLUMN memories_id SET NOT NULL;

