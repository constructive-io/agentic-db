-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN entity_id RESTRICT;


