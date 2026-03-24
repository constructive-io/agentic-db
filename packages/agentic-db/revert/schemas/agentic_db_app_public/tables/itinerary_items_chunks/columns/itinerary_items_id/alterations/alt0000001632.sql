-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/itinerary_items_id/alterations/alt0000001632


ALTER TABLE "agentic_db_app_public".itinerary_items_chunks 
  ALTER COLUMN itinerary_items_id DROP NOT NULL;


