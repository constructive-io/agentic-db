-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_pkey/constraint


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP CONSTRAINT scheduled_jobs_pkey;


