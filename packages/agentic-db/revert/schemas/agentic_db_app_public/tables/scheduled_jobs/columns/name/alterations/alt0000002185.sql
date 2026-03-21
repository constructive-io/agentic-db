-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/name/alterations/alt0000002185


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN name DROP NOT NULL;


