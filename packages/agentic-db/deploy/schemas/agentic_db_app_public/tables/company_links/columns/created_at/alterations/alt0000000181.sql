-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/created_at/alterations/alt0000000181
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/created_at/column



ALTER TABLE agentic_db_app_public.company_links 
    ALTER COLUMN created_at SET DEFAULT now();

