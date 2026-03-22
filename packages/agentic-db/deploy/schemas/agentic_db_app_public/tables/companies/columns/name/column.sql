-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/updated_at/alterations/alt0000000879


ALTER TABLE "agentic_db_app_public".companies 
  ADD COLUMN name text;

