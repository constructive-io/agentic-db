-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/columns/provider/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/email/alterations/alt0000002465


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  ADD COLUMN provider text;

