-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/schedule_type/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP COLUMN schedule_type RESTRICT;


