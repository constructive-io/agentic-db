-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/chunk_index/alterations/alt0000010721




ALTER TABLE agentic_db_app_public.agent_logs_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



