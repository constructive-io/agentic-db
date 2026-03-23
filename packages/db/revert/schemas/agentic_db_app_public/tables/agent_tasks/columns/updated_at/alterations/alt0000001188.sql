-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/updated_at/alterations/alt0000001188


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN updated_at DROP NOT NULL;


