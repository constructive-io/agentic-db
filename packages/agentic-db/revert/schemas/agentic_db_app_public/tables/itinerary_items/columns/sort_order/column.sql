-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/sort_order/column


ALTER TABLE "agentic_db_app_public".itinerary_items 
  DROP COLUMN sort_order RESTRICT;


