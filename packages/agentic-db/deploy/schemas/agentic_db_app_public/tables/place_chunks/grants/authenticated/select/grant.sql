-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT SELECT ON "agentic_db_app_public".place_chunks TO authenticated;

