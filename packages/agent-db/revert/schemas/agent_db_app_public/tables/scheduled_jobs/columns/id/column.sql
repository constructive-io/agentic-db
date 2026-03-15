-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/id/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP COLUMN id RESTRICT;


