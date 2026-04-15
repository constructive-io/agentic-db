-- Revert: schemas/agentic_db_app_public/tables/venues/columns/embedding_stale/alterations/alt0000013003




ALTER TABLE agentic_db_app_public.venues 
    ALTER COLUMN embedding_stale DROP DEFAULT;



