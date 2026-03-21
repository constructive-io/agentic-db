-- Revert: schemas/agentic_db_app_public/tables/contact_companies/columns/company_id/column


ALTER TABLE agentic_db_app_public.contact_companies 
  DROP COLUMN company_id RESTRICT;


