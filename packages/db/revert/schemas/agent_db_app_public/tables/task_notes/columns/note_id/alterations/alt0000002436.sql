-- Revert: schemas/agent_db_app_public/tables/task_notes/columns/note_id/alterations/alt0000002436


ALTER TABLE "agent_db_app_public".task_notes 
  ALTER COLUMN note_id DROP NOT NULL;


