-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/name/alterations/alt0000001620


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN name DROP NOT NULL;


