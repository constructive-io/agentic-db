-- Deploy: schemas/agentic_db_app_public/tables/codebases/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


GRANT SELECT ON agentic_db_app_public.codebases TO authenticated;

