-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/embedding_stale/alterations/alt0000001431




ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



