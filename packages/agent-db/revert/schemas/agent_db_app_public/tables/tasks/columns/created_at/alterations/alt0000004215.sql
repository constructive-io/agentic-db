-- Revert: schemas/agent_db_app_public/tables/tasks/columns/created_at/alterations/alt0000004215


ALTER TABLE "agent_db_app_public".tasks 
  ALTER COLUMN created_at DROP NOT NULL;


