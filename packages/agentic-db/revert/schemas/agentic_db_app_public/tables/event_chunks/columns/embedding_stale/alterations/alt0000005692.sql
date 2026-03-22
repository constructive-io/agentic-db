-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding_stale/alterations/alt0000005692




ALTER TABLE agentic_db_app_public.event_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



