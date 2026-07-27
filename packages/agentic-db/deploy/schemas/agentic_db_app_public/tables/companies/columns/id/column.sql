-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table


ALTER TABLE agentic_db_app_public.companies 
  ADD COLUMN id uuid;

