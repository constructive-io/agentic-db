-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/content/alterations/alt0000006335


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  ALTER COLUMN content DROP NOT NULL;


