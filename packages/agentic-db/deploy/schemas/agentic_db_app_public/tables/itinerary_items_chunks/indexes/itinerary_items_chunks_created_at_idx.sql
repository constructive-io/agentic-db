-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items_chunks/indexes/itinerary_items_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/created_at/column


CREATE INDEX itinerary_items_chunks_created_at_idx ON "agentic_db_app_public".itinerary_items_chunks ( created_at );

