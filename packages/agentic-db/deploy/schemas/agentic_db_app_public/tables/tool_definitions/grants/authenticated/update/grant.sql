-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


GRANT UPDATE ON agentic_db_app_public.tool_definitions TO authenticated;

