-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/id/alterations/alt0000001182


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN id DROP NOT NULL;


