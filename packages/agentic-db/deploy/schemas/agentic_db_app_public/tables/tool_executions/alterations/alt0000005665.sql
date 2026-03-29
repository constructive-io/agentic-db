-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/alterations/alt0000005665
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.tool_executions 
  DISABLE ROW LEVEL SECURITY;

