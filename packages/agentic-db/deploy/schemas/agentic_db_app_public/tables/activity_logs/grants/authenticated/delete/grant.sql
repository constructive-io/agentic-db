-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


GRANT DELETE ON agentic_db_app_public.activity_logs TO authenticated;

