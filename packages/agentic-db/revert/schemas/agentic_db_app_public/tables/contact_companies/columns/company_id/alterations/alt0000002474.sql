-- Revert: schemas/agentic_db_app_public/tables/contact_companies/columns/company_id/alterations/alt0000002474


ALTER TABLE agentic_db_app_public.contact_companies 
  ALTER COLUMN company_id DROP NOT NULL;


