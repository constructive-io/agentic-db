-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/command/alterations/alt0000002043


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN command DROP NOT NULL;


