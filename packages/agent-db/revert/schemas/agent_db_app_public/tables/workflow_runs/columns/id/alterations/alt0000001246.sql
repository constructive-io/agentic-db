-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/id/alterations/alt0000001246


ALTER TABLE agent_db_app_public.workflow_runs 
  ALTER COLUMN id DROP NOT NULL;


