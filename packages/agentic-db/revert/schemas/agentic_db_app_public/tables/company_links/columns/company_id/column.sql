-- Revert: schemas/agentic_db_app_public/tables/company_links/columns/company_id/column


ALTER TABLE agentic_db_app_public.company_links 
  DROP COLUMN company_id RESTRICT;


