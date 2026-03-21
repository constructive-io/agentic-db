-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/entity_id/column


ALTER TABLE agentic_db_app_public.scheduled_jobs 
  DROP COLUMN entity_id RESTRICT;


