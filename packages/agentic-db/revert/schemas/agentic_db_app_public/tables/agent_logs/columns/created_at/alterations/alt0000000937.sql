-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/created_at/alterations/alt0000000937




ALTER TABLE agentic_db_app_public.agent_logs 
    ALTER COLUMN created_at DROP DEFAULT;



