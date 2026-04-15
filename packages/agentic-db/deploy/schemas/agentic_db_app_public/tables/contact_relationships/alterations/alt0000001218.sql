-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/alterations/alt0000001218
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table


ALTER TABLE "agentic_db_app_public".contact_relationships 
  DISABLE ROW LEVEL SECURITY;

