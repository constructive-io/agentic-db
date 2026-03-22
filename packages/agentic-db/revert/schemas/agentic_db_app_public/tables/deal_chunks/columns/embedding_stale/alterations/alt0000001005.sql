-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding_stale/alterations/alt0000001005




ALTER TABLE "agentic_db_app_public".deal_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



