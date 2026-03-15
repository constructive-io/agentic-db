-- Revert: schemas/agent_db_app_public/tables/workflow_runs/columns/id/alterations/alt0000001247




ALTER TABLE agent_db_app_public.workflow_runs 
    ALTER COLUMN id DROP DEFAULT;



