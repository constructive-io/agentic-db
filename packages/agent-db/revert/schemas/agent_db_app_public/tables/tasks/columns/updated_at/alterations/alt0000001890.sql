-- Revert: schemas/agent_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000001890


ALTER TABLE "agent_db_app_public".tasks 
  ALTER COLUMN updated_at DROP NOT NULL;


