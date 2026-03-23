-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


GRANT INSERT ON "agentic_db_app_public".itinerary_items TO authenticated;

