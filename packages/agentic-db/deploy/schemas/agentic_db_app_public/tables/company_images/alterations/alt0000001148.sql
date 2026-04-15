-- Deploy: schemas/agentic_db_app_public/tables/company_images/alterations/alt0000001148
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_images/table


ALTER TABLE "agentic_db_app_public".company_images 
  DISABLE ROW LEVEL SECURITY;

