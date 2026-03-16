-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000001223


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ALTER COLUMN workflow_id DROP NOT NULL;


