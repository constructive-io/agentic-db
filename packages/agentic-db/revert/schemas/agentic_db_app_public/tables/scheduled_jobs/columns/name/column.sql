-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/name/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN name RESTRICT;


