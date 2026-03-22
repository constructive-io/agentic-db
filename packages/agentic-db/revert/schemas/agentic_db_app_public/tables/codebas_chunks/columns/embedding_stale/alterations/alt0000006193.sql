-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_stale/alterations/alt0000006193




ALTER TABLE agentic_db_app_public.codebas_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



