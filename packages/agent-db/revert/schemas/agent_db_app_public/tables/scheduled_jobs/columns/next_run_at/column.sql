-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/next_run_at/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP COLUMN next_run_at RESTRICT;


