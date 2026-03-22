-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/updated_at/alterations/alt0000005952




ALTER TABLE agentic_db_app_public.agent_log_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



