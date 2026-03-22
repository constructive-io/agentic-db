-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/id/alterations/alt0000002092


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN id DROP NOT NULL;


