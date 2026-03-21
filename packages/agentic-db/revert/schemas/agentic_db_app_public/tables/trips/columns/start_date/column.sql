-- Revert: schemas/agentic_db_app_public/tables/trips/columns/start_date/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN start_date RESTRICT;


