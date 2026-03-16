-- Deploy: schemas/agentic_db_app_public/tables/messages/alterations/alt0000001337
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agentic_db_app_public".messages 
  DISABLE ROW LEVEL SECURITY;

