-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/id/column


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  DROP COLUMN id RESTRICT;


