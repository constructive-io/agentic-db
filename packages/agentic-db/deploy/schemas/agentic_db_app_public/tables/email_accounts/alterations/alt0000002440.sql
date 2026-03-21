-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/alterations/alt0000002440
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/files/indexes/files_language_idx


ALTER TABLE "agentic_db_app_public".email_accounts 
  DISABLE ROW LEVEL SECURITY;

