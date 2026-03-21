-- Revert: schemas/agentic_db_app_public/tables/task_notes/columns/id/alterations/alt0000004802


ALTER TABLE agentic_db_app_public.task_notes 
  ALTER COLUMN id DROP NOT NULL;


