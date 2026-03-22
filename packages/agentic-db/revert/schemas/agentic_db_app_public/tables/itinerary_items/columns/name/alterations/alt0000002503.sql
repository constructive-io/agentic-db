-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/name/alterations/alt0000002503


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN name DROP NOT NULL;


