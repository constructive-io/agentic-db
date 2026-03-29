-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/alterations/alt0000005731
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN embedding_stale SET NOT NULL;

