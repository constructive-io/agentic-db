-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_stale/alterations/alt0000005574
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_states 
  ALTER COLUMN embedding_stale SET NOT NULL;

