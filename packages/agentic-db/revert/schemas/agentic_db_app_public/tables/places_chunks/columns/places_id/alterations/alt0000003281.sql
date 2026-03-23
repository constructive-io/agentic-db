-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/places_id/alterations/alt0000003281


ALTER TABLE agentic_db_app_public.places_chunks 
  ALTER COLUMN places_id DROP NOT NULL;


