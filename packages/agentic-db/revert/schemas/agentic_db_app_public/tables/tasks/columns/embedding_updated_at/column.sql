-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN embedding_updated_at RESTRICT;


