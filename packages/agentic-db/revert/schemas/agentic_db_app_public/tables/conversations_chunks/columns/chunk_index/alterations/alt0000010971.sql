-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/chunk_index/alterations/alt0000010971




ALTER TABLE agentic_db_app_public.conversations_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



