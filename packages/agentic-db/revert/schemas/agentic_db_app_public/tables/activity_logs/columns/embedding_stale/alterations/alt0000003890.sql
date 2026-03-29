-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding_stale/alterations/alt0000003890




ALTER TABLE agentic_db_app_public.activity_logs 
    ALTER COLUMN embedding_stale DROP DEFAULT;



