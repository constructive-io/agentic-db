-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/columns/name/alterations/alt0000004426


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN name DROP NOT NULL;


