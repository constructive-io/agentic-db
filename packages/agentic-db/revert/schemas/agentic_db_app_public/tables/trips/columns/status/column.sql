-- Revert: schemas/agentic_db_app_public/tables/trips/columns/status/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN status RESTRICT;


