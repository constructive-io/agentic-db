-- Deploy: schemas/agentic_db_app_public/tables/companies_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/table


ALTER TABLE "agentic_db_app_public".companies_chunks 
  ADD COLUMN content text;

