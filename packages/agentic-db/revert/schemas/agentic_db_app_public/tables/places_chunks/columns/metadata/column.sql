-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.places_chunks 
  DROP COLUMN metadata RESTRICT;


