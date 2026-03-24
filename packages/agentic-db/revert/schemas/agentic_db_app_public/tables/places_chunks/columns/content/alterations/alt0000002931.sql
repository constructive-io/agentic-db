-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/content/alterations/alt0000002931


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN content DROP NOT NULL;


