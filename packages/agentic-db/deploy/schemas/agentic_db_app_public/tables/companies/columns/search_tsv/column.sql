-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/search_tsv/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/embedding/column


ALTER TABLE agentic_db_app_public.companies 
  ADD COLUMN search_tsv tsvector;

