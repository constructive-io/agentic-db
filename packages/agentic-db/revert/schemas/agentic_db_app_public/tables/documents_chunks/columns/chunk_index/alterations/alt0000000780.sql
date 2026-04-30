-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/chunk_index/alterations/alt0000000780




ALTER TABLE agentic_db_app_public.documents_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



