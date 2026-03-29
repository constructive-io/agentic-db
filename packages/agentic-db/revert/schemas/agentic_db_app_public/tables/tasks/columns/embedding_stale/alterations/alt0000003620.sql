-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/embedding_stale/alterations/alt0000003620


ALTER TABLE agentic_db_app_public.tasks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


