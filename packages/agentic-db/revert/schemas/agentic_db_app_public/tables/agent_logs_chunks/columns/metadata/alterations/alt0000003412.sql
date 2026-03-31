-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/metadata/alterations/alt0000003412




ALTER TABLE agentic_db_app_public.agent_logs_chunks 
    ALTER COLUMN metadata DROP DEFAULT;



