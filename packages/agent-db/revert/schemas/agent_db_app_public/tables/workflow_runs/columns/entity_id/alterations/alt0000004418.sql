-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/entity_id/alterations/alt0000004418


ALTER TABLE "agent_db_app_public".workflow_runs 
  ALTER COLUMN entity_id DROP NOT NULL;


