-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/alterations/alt0000001071
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table


ALTER TABLE "agentic_db_app_public".contact_emails 
  DISABLE ROW LEVEL SECURITY;

