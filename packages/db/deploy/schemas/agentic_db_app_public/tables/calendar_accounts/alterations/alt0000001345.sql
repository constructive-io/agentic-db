-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/alterations/alt0000001345
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding/column


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  DISABLE ROW LEVEL SECURITY;

