-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  DROP COLUMN updated_at RESTRICT;


