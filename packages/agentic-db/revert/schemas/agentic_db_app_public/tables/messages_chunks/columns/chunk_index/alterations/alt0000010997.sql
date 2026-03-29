-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/chunk_index/alterations/alt0000010997




ALTER TABLE agentic_db_app_public.messages_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



