-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/name/alterations/alt0000000041
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/name/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.companies 
  ALTER COLUMN name SET NOT NULL;

