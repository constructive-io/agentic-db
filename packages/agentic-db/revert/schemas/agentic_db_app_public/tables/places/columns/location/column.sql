-- Revert: schemas/agentic_db_app_public/tables/places/columns/location/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN location RESTRICT;


