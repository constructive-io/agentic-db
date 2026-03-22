-- Revert: schemas/agentic_db_app_public/tables/agents/columns/temperature/alterations/alt0000005860




ALTER TABLE agentic_db_app_public.agents 
    ALTER COLUMN temperature DROP DEFAULT;



