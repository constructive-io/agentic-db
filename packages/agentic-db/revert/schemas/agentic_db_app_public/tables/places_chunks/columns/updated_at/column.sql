-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.places_chunks 
  DROP COLUMN updated_at RESTRICT;


