-- Deploy: schemas/agentic_db_app_public/tables/itinerary_items/columns/entity_id/alterations/alt0000001622
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_location_gist_idx
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN entity_id SET NOT NULL;

