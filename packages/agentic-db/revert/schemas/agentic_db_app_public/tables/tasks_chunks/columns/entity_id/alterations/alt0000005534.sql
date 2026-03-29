-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/entity_id/alterations/alt0000005534


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


