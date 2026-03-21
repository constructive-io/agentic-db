-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".workflow_steps 
  DROP COLUMN entity_id RESTRICT;


