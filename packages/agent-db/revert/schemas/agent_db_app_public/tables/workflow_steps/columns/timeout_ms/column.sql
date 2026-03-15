-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  DROP COLUMN timeout_ms RESTRICT;


