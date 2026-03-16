-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  DROP COLUMN updated_at RESTRICT;


