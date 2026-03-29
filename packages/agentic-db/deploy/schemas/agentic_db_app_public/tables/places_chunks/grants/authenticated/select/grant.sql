-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


GRANT SELECT ON agentic_db_app_public.places_chunks TO authenticated;

