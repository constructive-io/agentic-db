-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/columns/company_id/alterations/alt0000000286
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/deal_companies/columns/company_id/column


ALTER TABLE agentic_db_app_public.deal_companies 
  ALTER COLUMN company_id SET NOT NULL;

