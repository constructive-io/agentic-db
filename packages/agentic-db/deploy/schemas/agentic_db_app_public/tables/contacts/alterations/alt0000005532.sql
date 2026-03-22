-- Deploy: schemas/agentic_db_app_public/tables/contacts/alterations/alt0000005532
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000005531


ALTER TABLE agentic_db_app_public.contacts 
  DISABLE ROW LEVEL SECURITY;

