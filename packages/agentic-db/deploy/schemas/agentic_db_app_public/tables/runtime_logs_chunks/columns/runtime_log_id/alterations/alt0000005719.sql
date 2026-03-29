-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_log_id/alterations/alt0000005719
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_log_id/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ALTER COLUMN runtime_log_id SET NOT NULL;

