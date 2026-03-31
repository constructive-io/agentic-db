-- Revert: schemas/agentic_db_app_public/tables/deal_companies/columns/company_id/column


ALTER TABLE agentic_db_app_public.deal_companies 
  DROP COLUMN company_id RESTRICT;


