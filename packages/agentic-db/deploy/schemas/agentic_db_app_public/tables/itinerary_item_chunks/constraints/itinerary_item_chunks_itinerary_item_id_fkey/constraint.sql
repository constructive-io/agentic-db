-- Deploy: schemas/agentic_db_app_public/tables/itinerary_item_chunks/constraints/itinerary_item_chunks_itinerary_item_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/itinerary_item_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/indexes/place_chunks_place_id_idx


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ADD CONSTRAINT itinerary_item_chunks_itinerary_item_id_fkey 
    FOREIGN KEY(itinerary_item_id) 
    REFERENCES "agentic_db_app_public".itinerary_items (id) 
    ON DELETE CASCADE;

