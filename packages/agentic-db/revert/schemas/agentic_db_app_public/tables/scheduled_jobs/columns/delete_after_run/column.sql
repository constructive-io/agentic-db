-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/delete_after_run/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN delete_after_run RESTRICT;


