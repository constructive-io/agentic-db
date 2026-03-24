-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_day_number_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/day_number/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX itinerary_items_day_number_idx ON "agentic_db_app_public".itinerary_items USING BTREE ( day_number );

