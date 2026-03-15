-- Revert: schemas/agent_db_app_public/tables/workflow_steps/columns/id/alterations/alt0000001236




ALTER TABLE agent_db_app_public.workflow_steps 
    ALTER COLUMN id DROP DEFAULT;



