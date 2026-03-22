-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding_stale/alterations/alt0000002632




ALTER TABLE agentic_db_app_public.message_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



