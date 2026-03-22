-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  DROP COLUMN embedding_text RESTRICT;


