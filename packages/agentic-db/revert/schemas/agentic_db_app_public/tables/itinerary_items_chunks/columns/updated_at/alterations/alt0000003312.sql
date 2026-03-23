-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/columns/updated_at/alterations/alt0000003312


ALTER TABLE agentic_db_app_public.itinerary_items_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


