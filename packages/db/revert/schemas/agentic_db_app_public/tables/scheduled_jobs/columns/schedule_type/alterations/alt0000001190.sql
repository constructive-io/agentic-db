-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000001190


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN schedule_type DROP NOT NULL;


