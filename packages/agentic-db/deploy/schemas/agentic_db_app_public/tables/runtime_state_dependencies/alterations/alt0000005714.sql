-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/alterations/alt0000005714
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  DISABLE ROW LEVEL SECURITY;

