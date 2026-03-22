-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/embedding_stale/alterations/alt0000005879




ALTER TABLE agentic_db_app_public.agent_tasks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



