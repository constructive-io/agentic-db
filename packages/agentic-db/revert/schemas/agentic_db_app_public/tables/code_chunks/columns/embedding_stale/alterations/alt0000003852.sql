-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/embedding_stale/alterations/alt0000003852




ALTER TABLE agentic_db_app_public.code_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



