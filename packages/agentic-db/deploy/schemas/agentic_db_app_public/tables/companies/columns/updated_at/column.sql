-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table


ALTER TABLE agentic_db_app_public.companies 
  ADD COLUMN updated_at timestamptz;

