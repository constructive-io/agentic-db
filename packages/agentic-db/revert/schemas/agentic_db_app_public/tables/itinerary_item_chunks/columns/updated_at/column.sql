-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  DROP COLUMN updated_at RESTRICT;


