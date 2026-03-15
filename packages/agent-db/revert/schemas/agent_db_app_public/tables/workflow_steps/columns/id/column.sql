-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/id/column


ALTER TABLE "agent_db_app_public".workflow_steps 
  DROP COLUMN id RESTRICT;


