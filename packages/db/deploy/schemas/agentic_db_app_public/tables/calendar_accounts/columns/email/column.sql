-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/columns/email/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/updated_at/alterations/alt0000001352


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  ADD COLUMN email text;

