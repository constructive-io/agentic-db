-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/company_id/column


ALTER TABLE agentic_db_app_public.company_chunks 
  DROP COLUMN company_id RESTRICT;


