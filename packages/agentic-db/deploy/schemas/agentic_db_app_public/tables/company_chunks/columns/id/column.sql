-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".company_chunks 
  ADD COLUMN id uuid;

