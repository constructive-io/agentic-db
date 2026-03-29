-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


GRANT UPDATE ON agentic_db_app_public.goals_chunks TO authenticated;

