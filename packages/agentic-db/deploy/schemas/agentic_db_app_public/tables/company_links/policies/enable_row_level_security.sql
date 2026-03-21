-- Deploy: schemas/agentic_db_app_public/tables/company_links/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding/column


ALTER TABLE "agentic_db_app_public".company_links 
  ENABLE ROW LEVEL SECURITY;

