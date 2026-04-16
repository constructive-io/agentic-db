-- Revert: schemas/agentic_db_app_public/tables/venues/columns/location/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN location RESTRICT;


