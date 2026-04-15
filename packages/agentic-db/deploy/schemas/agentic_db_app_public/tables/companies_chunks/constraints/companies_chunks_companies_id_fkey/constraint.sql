-- Deploy: schemas/agentic_db_app_public/tables/companies_chunks/constraints/companies_chunks_companies_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/table


ALTER TABLE "agentic_db_app_public".companies_chunks 
  ADD CONSTRAINT companies_chunks_companies_id_fkey 
    FOREIGN KEY(companies_id) 
    REFERENCES "agentic_db_app_public".companies (id) 
    ON DELETE CASCADE;

