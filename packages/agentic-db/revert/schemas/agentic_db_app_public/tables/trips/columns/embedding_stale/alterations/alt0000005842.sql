-- Revert: schemas/agentic_db_app_public/tables/trips/columns/embedding_stale/alterations/alt0000005842




ALTER TABLE agentic_db_app_public.trips 
    ALTER COLUMN embedding_stale DROP DEFAULT;



