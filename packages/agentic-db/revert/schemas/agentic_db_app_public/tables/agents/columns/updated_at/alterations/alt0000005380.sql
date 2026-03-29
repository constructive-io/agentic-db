-- Revert: schemas/agentic_db_app_public/tables/agents/columns/updated_at/alterations/alt0000005380




ALTER TABLE agentic_db_app_public.agents 
    ALTER COLUMN updated_at DROP DEFAULT;



