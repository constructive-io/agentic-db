-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/metadata/alterations/alt0000010899




ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
    ALTER COLUMN metadata DROP DEFAULT;



