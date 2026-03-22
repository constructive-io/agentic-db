-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/agent_id/alterations/alt0000002095


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ALTER COLUMN agent_id DROP NOT NULL;


