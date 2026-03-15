-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000004427


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN schedule_type DROP NOT NULL;


