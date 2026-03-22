-- Revert: schemas/agentic_db_app_public/tables/itinerary_item_chunks/columns/updated_at/alterations/alt0000002853


ALTER TABLE agentic_db_app_public.itinerary_item_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


