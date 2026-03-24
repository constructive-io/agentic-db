-- Revert: schemas/agentic_db_app_public/tables/contact_companies/constraints/contact_companies_pkey/constraint


ALTER TABLE agentic_db_app_public.contact_companies 
  DROP CONSTRAINT contact_companies_pkey;


