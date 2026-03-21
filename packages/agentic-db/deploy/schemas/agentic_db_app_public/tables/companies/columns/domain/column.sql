-- Deploy: schemas/agentic_db_app_public/tables/companies/columns/domain/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/name/alterations/alt0000001719


ALTER TABLE "agentic_db_app_public".companies 
  ADD COLUMN domain text;

