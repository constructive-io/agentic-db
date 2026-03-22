-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/embedding_stale/alterations/alt0000006445




ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



