-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/itinerary_item_id/alterations/alt0000002652


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ALTER COLUMN itinerary_item_id DROP NOT NULL;


