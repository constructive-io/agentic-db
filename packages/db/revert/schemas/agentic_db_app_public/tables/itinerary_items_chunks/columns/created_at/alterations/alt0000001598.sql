-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/created_at/alterations/alt0000001598


ALTER TABLE "agentic_db_app_public".itinerary_items_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


