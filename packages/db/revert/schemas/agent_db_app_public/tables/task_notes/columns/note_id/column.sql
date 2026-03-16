-- Revert: schemas/agent_db_app_public/tables/task_notes/columns/note_id/column


ALTER TABLE "agent_db_app_public".task_notes 
  DROP COLUMN note_id RESTRICT;


