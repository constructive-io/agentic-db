-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  DROP COLUMN embedding_stale RESTRICT;


