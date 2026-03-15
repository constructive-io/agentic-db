-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/entity_id/alterations/alt0000004407


ALTER TABLE "agent_db_app_public".workflow_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


