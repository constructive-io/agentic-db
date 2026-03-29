-- Revert: schemas/agentic_db_app_public/tables/task_notes/columns/note_id/alterations/alt0000006197


ALTER TABLE agentic_db_app_public.task_notes 
  ALTER COLUMN note_id DROP NOT NULL;


