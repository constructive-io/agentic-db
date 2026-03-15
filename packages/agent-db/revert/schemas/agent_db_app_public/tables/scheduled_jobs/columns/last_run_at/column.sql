-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_run_at/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP COLUMN last_run_at RESTRICT;


