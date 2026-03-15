-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/workflow_id/column


ALTER TABLE agent_db_app_public.workflow_steps 
  DROP COLUMN workflow_id RESTRICT;


