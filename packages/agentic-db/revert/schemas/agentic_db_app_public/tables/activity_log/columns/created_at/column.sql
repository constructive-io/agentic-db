-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/created_at/column


ALTER TABLE agentic_db_app_public.activity_log 
  DROP COLUMN created_at RESTRICT;


