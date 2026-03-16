-- Revert: schemas/agent_db_app_public/tables/tasks/columns/created_at/column


ALTER TABLE "agent_db_app_public".tasks 
  DROP COLUMN created_at RESTRICT;


