-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/agent_id/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN agent_id RESTRICT;


