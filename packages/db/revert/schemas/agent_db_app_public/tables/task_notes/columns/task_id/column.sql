-- Revert: schemas/agent_db_app_public/tables/task_notes/columns/task_id/column


ALTER TABLE "agent_db_app_public".task_notes 
  DROP COLUMN task_id RESTRICT;


