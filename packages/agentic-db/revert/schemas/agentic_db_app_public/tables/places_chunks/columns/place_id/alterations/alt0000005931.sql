-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/place_id/alterations/alt0000005931


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN place_id DROP NOT NULL;


