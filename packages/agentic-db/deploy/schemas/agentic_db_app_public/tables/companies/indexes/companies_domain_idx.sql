-- Deploy: schemas/agentic_db_app_public/tables/companies/indexes/companies_domain_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/domain/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE INDEX companies_domain_idx ON agentic_db_app_public.companies USING BTREE ( domain );

