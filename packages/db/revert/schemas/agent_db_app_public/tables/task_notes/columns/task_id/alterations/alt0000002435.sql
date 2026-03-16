-- Revert: schemas/agent_db_app_public/tables/task_notes/columns/task_id/alterations/alt0000002435


ALTER TABLE "agent_db_app_public".task_notes 
  ALTER COLUMN task_id DROP NOT NULL;


