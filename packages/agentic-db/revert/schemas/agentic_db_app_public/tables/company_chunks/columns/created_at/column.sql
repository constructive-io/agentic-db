-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  DROP COLUMN created_at RESTRICT;


