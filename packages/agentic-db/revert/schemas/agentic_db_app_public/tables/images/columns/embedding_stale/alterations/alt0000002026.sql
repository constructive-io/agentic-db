-- Revert: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000002026




ALTER TABLE agentic_db_app_public.images 
    ALTER COLUMN embedding_stale DROP DEFAULT;



