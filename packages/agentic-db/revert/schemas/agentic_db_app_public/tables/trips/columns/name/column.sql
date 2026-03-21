-- Revert: schemas/agentic_db_app_public/tables/trips/columns/name/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN name RESTRICT;


