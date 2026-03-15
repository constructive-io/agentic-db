-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_pkey/constraint


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP CONSTRAINT scheduled_jobs_pkey;


