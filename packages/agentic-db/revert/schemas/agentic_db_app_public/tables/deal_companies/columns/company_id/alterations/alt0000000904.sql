-- Revert: schemas/agentic_db_app_public/tables/deal_companies/columns/company_id/alterations/alt0000000904


ALTER TABLE agentic_db_app_public.deal_companies 
  ALTER COLUMN company_id DROP NOT NULL;


