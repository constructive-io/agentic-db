-- Revert: schemas/agentic_db_app_public/tables/task_chunks/columns/entity_id/alterations/alt0000004018


ALTER TABLE agentic_db_app_public.task_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


