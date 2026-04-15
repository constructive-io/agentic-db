-- Revert: schemas/agentic_db_app_public/tables/task_notes/columns/task_id/alterations/alt0000013649


ALTER TABLE agentic_db_app_public.task_notes 
  ALTER COLUMN task_id DROP NOT NULL;


