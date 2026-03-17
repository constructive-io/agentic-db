-- Deploy: schemas/agentic_db_app_public/tables/contact_links/alterations/alt0000000938
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000000937


ALTER TABLE "agentic_db_app_public".contact_links 
  DISABLE ROW LEVEL SECURITY;

