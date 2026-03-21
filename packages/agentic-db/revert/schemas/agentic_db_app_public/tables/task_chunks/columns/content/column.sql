-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.task_chunks 
  DROP COLUMN content RESTRICT;


