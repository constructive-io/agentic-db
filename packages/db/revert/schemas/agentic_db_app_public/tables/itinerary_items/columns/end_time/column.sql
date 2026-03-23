-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/end_time/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN end_time RESTRICT;


