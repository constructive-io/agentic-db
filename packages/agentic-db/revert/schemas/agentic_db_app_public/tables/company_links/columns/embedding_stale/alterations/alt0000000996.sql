-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/alterations/alt0000000996




ALTER TABLE "agentic_db_app_public".company_links 
    ALTER COLUMN embedding_stale DROP DEFAULT;



