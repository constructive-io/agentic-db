-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/on_failure_step/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  DROP COLUMN on_failure_step RESTRICT;


