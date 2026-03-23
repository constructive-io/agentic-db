-- Revert: schemas/agentic_db_app_public/tables/venues/columns/status/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN status RESTRICT;


