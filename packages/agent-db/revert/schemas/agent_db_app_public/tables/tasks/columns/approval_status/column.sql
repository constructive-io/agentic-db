-- Revert: schemas/agent_db_app_public/tables/tasks/columns/approval_status/column


ALTER TABLE "agent_db_app_public".tasks 
  DROP COLUMN approval_status RESTRICT;


