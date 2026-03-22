-- Revert: schemas/agentic_db_app_public/tables/habits/columns/embedding_stale/alterations/alt0000001963




ALTER TABLE "agentic_db_app_public".habits 
    ALTER COLUMN embedding_stale DROP DEFAULT;



