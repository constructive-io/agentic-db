-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/content/alterations/alt0000002956


ALTER TABLE agentic_db_app_public.itinerary_items_chunks 
  ALTER COLUMN content DROP NOT NULL;


