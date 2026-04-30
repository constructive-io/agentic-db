-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/company_id/alterations/alt0000000260
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/company_id/column


ALTER TABLE agentic_db_app_public.company_links 
  ALTER COLUMN company_id SET NOT NULL;

