-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/alterations/alt0000005641
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000005640


ALTER TABLE agentic_db_app_public.contact_chunks 
  DISABLE ROW LEVEL SECURITY;

