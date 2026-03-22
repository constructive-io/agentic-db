-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/created_at/alterations/alt0000001997


ALTER TABLE "agentic_db_app_public".itinerary_item_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


