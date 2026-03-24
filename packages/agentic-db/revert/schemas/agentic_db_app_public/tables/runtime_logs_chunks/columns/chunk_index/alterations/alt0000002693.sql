-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/chunk_index/alterations/alt0000002693




ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



