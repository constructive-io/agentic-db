-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/created_at/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN created_at RESTRICT;


