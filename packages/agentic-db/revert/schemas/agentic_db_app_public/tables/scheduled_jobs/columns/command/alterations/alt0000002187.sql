-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/command/alterations/alt0000002187


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  ALTER COLUMN command DROP NOT NULL;


