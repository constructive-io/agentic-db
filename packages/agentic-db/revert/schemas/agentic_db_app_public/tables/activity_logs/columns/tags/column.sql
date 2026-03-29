-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/tags/column


ALTER TABLE agentic_db_app_public.activity_logs 
  DROP COLUMN tags RESTRICT;


