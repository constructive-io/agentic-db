-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


GRANT DELETE ON agentic_db_app_public.hiking_trails_chunks TO authenticated;

