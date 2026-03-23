-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/itinerary_items_id/column


ALTER TABLE "agentic_db_app_public".itinerary_items_chunks 
  DROP COLUMN itinerary_items_id RESTRICT;


