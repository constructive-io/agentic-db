-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/indexes/itinerary_item_chunks_itinerary_item_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/itinerary_item_id/column


CREATE INDEX itinerary_item_chunks_itinerary_item_id_idx ON "agentic_db_app_public".itinerary_item_chunks USING BTREE ( itinerary_item_id );

