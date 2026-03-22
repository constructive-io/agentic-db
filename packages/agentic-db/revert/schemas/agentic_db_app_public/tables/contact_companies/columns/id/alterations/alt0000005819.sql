-- Revert: schemas/agentic_db_app_public/tables/contact_companies/columns/id/alterations/alt0000005819


ALTER TABLE agentic_db_app_public.contact_companies 
  ALTER COLUMN id DROP NOT NULL;


