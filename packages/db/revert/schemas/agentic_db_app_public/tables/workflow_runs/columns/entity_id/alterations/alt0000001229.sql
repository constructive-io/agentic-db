-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/entity_id/alterations/alt0000001229


ALTER TABLE "agentic_db_app_public".workflow_runs 
  ALTER COLUMN entity_id DROP NOT NULL;


