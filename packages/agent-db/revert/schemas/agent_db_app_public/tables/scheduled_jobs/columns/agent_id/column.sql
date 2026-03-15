-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/agent_id/column


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  DROP COLUMN agent_id RESTRICT;


