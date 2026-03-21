-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  DROP COLUMN step_order RESTRICT;


