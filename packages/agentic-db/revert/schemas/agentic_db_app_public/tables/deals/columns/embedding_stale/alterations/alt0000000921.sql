-- Revert: schemas/agentic_db_app_public/tables/deals/columns/embedding_stale/alterations/alt0000000921




ALTER TABLE "agentic_db_app_public".deals 
    ALTER COLUMN embedding_stale DROP DEFAULT;



