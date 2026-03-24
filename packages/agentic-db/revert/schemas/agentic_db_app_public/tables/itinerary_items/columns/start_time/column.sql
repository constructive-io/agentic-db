-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/start_time/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN start_time RESTRICT;


