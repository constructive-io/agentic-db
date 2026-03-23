-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/chunk_index/alterations/alt0000002666




ALTER TABLE agentic_db_app_public.events_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



