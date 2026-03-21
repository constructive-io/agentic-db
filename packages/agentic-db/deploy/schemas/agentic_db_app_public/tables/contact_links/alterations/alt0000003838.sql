-- Deploy: schemas/agentic_db_app_public/tables/contact_links/alterations/alt0000003838
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.contact_links 
  DISABLE ROW LEVEL SECURITY;

