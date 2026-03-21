-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/action_config/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  DROP COLUMN action_config RESTRICT;


