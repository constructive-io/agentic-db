-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".company_links 
  DROP COLUMN embedding_stale RESTRICT;


