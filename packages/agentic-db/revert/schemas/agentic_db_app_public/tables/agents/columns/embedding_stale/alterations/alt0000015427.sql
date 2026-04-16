-- Revert: schemas/agentic_db_app_public/tables/agents/columns/embedding_stale/alterations/alt0000015427




ALTER TABLE agentic_db_app_public.agents 
    ALTER COLUMN embedding_stale DROP DEFAULT;



