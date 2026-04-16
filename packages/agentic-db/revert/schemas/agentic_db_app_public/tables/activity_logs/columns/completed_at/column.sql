-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/column


ALTER TABLE agentic_db_app_public.activity_logs 
  DROP COLUMN completed_at RESTRICT;


