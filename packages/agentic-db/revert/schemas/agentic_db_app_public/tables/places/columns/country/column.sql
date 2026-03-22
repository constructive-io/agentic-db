-- Revert: schemas/agentic_db_app_public/tables/places/columns/country/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN country RESTRICT;


