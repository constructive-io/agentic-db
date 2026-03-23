-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/created_at/alterations/alt0000001186


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN created_at DROP NOT NULL;


