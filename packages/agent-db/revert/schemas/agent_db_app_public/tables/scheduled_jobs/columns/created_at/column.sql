-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/created_at/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP COLUMN created_at RESTRICT;


