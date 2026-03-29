-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/chunk_index/alterations/alt0000010522




ALTER TABLE agentic_db_app_public.interactions_chunks 
    ALTER COLUMN chunk_index DROP DEFAULT;



