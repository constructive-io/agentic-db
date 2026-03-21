-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/created_at/alterations/alt0000004255




ALTER TABLE agentic_db_app_public.agent_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



