-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table


ALTER TABLE agentic_db_app_public.company_links 
  ADD COLUMN created_at timestamptz;

