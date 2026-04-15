-- Deploy: schemas/agentic_db_app_public/tables/company_links/alterations/alt0000001108
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table


ALTER TABLE "agentic_db_app_public".company_links 
  DISABLE ROW LEVEL SECURITY;

