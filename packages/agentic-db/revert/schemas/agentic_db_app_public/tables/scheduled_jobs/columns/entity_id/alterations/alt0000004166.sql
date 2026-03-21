-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/entity_id/alterations/alt0000004166


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  ALTER COLUMN entity_id DROP NOT NULL;


