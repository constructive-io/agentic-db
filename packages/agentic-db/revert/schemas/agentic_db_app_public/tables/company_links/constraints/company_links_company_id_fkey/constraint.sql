-- Revert: schemas/agentic_db_app_public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE agentic_db_app_public.company_links 
  DROP CONSTRAINT company_links_company_id_fkey;


