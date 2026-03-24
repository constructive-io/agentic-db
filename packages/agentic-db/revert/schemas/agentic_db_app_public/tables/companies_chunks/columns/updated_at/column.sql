-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.companies_chunks 
  DROP COLUMN updated_at RESTRICT;


