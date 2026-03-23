-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.places_chunks 
  DROP COLUMN created_at RESTRICT;


