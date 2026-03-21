-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/updated_at/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN updated_at RESTRICT;


