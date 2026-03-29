-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/place_id/column


ALTER TABLE agentic_db_app_public.places_chunks 
  DROP COLUMN place_id RESTRICT;


