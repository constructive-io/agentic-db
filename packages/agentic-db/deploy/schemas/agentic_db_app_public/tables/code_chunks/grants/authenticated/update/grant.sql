-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


GRANT UPDATE ON agentic_db_app_public.code_chunks TO authenticated;

