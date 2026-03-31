-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.tasks_chunks 
  DROP COLUMN content RESTRICT;


