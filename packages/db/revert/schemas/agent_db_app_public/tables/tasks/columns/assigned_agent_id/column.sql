-- Revert: schemas/agent_db_app_public/tables/tasks/columns/assigned_agent_id/column


ALTER TABLE "agent_db_app_public".tasks 
  DROP COLUMN assigned_agent_id RESTRICT;


