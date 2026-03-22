-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/embedding_stale/alterations/alt0000001702




ALTER TABLE "agentic_db_app_public".trip_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



