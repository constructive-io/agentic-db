-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/itinerary_item_id/alterations/alt0000001783
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/indexes/place_chunks_place_id_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/itinerary_item_id/column


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ALTER COLUMN itinerary_item_id SET NOT NULL;

