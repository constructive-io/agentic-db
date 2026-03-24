-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/started_at/column


ALTER TABLE "agentic_db_app_public".agent_tasks 
  DROP COLUMN started_at RESTRICT;


