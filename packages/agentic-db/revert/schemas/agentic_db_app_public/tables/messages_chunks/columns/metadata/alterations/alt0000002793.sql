-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/metadata/alterations/alt0000002793




ALTER TABLE agentic_db_app_public.messages_chunks 
    ALTER COLUMN metadata DROP DEFAULT;



