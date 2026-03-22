-- Deploy: schemas/agentic_db_app_public/tables/company_chunks/columns/company_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_contact_id_idx


ALTER TABLE "agentic_db_app_public".company_chunks 
  ADD COLUMN company_id uuid;

