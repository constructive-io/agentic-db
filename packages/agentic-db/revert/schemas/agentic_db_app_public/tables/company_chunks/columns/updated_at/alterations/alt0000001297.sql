-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/updated_at/alterations/alt0000001297


ALTER TABLE "agentic_db_app_public".company_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


