-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/session_id/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN session_id RESTRICT;


