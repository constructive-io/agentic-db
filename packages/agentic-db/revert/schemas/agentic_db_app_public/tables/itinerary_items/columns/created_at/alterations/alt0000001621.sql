-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/columns/created_at/alterations/alt0000001621


ALTER TABLE "agentic_db_app_public".itinerary_items 
  ALTER COLUMN created_at DROP NOT NULL;


