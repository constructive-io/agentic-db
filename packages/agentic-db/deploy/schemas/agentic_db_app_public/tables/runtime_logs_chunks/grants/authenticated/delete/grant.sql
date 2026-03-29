-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


GRANT DELETE ON agentic_db_app_public.runtime_logs_chunks TO authenticated;

