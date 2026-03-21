-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/id/alterations/alt0000003849
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding/column



ALTER TABLE agentic_db_app_public.company_links 
    ALTER COLUMN id SET DEFAULT uuidv7();

