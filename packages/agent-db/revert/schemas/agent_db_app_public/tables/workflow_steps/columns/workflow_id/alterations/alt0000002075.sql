-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/alterations/alt0000002075


ALTER TABLE "agent_db_app_public".workflow_steps 
  ALTER COLUMN workflow_id DROP NOT NULL;


