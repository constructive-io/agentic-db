-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/id/alterations/alt0000001562


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  ALTER COLUMN id DROP NOT NULL;


