-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/id/alterations/alt0000001793


ALTER TABLE "agentic_db_app_public".company_chunks 
  ALTER COLUMN id DROP NOT NULL;


