-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  DROP COLUMN chunk_index RESTRICT;


