-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


GRANT UPDATE ON agentic_db_app_public.runtime_artifacts TO authenticated;

