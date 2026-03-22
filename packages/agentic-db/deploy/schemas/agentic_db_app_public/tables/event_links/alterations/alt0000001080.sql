-- Deploy: schemas/agentic_db_app_public/tables/event_links/alterations/alt0000001080
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/alterations/alt0000001079


ALTER TABLE "agentic_db_app_public".event_links 
  DISABLE ROW LEVEL SECURITY;

