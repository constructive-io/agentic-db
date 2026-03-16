-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/entity_id/alterations/alt0000001218


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


