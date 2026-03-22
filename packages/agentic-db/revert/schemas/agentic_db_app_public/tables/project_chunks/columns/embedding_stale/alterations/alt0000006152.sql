-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding_stale/alterations/alt0000006152




ALTER TABLE agentic_db_app_public.project_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



