-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/embedding_stale/alterations/alt0000006095




ALTER TABLE agentic_db_app_public.autonomy_records 
    ALTER COLUMN embedding_stale DROP DEFAULT;



