-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/action_type/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  DROP COLUMN action_type RESTRICT;


