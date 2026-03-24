-- Deploy: schemas/agentic_db_app_public/tables/trip_places/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT INSERT ON "agentic_db_app_public".trip_places TO authenticated;

