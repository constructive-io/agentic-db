-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/company_id/alterations/alt0000002831


ALTER TABLE agentic_db_app_public.company_links 
  ALTER COLUMN company_id DROP NOT NULL;


