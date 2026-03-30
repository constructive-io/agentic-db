-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/embedding_stale/alterations/alt0000001799




ALTER TABLE "agentic_db_app_public".email_threads 
    ALTER COLUMN embedding_stale DROP DEFAULT;



