-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/id/alterations/alt0000001905


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN id DROP NOT NULL;


