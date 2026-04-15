-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/alterations/alt0000001176
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table


ALTER TABLE "agentic_db_app_public".contact_companies 
  DISABLE ROW LEVEL SECURITY;

