-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/trip_id/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN trip_id RESTRICT;


