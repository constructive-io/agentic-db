-- Revert: schemas/agent_db_app_public/tables/task_notes/constraints/task_notes_task_id_fkey/constraint


ALTER TABLE "agent_db_app_public".task_notes 
  DROP CONSTRAINT task_notes_task_id_fkey;


