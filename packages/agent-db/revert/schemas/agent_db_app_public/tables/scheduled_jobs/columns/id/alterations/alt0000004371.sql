-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/id/alterations/alt0000004371


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN id DROP NOT NULL;


