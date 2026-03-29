-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/updated_at/alterations/alt0000005915


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


