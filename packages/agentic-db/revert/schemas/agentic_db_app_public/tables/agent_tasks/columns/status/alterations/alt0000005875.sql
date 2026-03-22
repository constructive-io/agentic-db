-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/status/alterations/alt0000005875




ALTER TABLE agentic_db_app_public.agent_tasks 
    ALTER COLUMN status DROP DEFAULT;



