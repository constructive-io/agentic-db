-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/activity_type/column


ALTER TABLE agentic_db_app_public.activity_logs 
  DROP COLUMN activity_type RESTRICT;


