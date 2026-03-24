-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/day_number/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN day_number RESTRICT;


