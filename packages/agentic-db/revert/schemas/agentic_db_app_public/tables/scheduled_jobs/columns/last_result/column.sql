-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN last_result RESTRICT;


