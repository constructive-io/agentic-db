-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/is_active/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN is_active RESTRICT;


