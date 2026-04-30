-- Revert: schemas/agentic_db_app_public/tables/memories/columns/embedding_stale/alterations/alt0000000588




ALTER TABLE agentic_db_app_public.memories 
    ALTER COLUMN embedding_stale DROP DEFAULT;



