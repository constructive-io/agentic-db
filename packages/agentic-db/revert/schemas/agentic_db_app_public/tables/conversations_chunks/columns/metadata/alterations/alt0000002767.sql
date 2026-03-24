-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/metadata/alterations/alt0000002767




ALTER TABLE agentic_db_app_public.conversations_chunks 
    ALTER COLUMN metadata DROP DEFAULT;



