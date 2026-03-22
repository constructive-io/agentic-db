-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/embedding_stale/alterations/alt0000006351




ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



