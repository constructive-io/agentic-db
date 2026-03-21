-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000003767


ALTER TABLE agentic_db_app_public.contact_chunks 
  ENABLE ROW LEVEL SECURITY;

