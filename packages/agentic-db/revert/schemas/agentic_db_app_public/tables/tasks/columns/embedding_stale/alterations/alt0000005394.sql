-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/embedding_stale/alterations/alt0000005394


ALTER TABLE agentic_db_app_public.tasks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


