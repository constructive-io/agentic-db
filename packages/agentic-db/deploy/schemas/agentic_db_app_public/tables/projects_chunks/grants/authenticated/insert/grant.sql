-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_chunk_index_idx


GRANT INSERT ON agentic_db_app_public.projects_chunks TO authenticated;

