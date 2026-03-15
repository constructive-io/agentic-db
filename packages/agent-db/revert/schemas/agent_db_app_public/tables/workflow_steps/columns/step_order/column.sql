-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/step_order/column


ALTER TABLE agent_db_app_public.workflow_steps 
  DROP COLUMN step_order RESTRICT;


