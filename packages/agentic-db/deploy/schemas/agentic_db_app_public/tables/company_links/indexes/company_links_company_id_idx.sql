-- Deploy: schemas/agentic_db_app_public/tables/company_links/indexes/company_links_company_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/company_id/column


CREATE INDEX company_links_company_id_idx ON agentic_db_app_public.company_links USING BTREE ( company_id );

