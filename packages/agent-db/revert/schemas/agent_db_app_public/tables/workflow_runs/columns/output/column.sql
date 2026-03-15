-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/output/column


ALTER TABLE agent_db_app_public.workflow_runs 
  DROP COLUMN output RESTRICT;


