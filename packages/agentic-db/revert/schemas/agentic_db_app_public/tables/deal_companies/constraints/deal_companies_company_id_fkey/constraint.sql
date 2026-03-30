-- Revert: schemas/agentic_db_app_public/tables/deal_companies/constraints/deal_companies_company_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".deal_companies 
  DROP CONSTRAINT deal_companies_company_id_fkey;


