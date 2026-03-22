-- Revert: schemas/agentic_db_app_public/tables/trips/columns/location/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN location RESTRICT;


