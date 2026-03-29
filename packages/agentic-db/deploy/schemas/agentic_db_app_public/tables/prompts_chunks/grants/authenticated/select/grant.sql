-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


GRANT SELECT ON agentic_db_app_public.prompts_chunks TO authenticated;

