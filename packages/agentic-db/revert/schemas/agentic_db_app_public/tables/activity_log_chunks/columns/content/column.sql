-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  DROP COLUMN content RESTRICT;


