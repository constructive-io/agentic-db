-- Revert: schemas/agent_db_app_public/tables/task_notes/columns/id/alterations/alt0000002437


ALTER TABLE "agent_db_app_public".task_notes 
  ALTER COLUMN id DROP NOT NULL;


