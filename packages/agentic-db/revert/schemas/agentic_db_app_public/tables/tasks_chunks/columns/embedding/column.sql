-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.tasks_chunks 
  DROP COLUMN embedding RESTRICT;


