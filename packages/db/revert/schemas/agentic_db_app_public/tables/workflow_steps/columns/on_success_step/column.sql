-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/on_success_step/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  DROP COLUMN on_success_step RESTRICT;


