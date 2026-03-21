-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000002183


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN updated_at DROP NOT NULL;


