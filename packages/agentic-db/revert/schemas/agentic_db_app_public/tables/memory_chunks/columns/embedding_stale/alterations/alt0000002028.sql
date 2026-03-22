-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding_stale/alterations/alt0000002028




ALTER TABLE "agentic_db_app_public".memory_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



