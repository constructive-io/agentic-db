-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/id/alterations/alt0000001194


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  ALTER COLUMN id DROP NOT NULL;


