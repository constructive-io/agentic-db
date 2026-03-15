-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/message/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DROP COLUMN message RESTRICT;


