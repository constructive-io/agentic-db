-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/provider/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/email/alterations/alt0000004605


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ADD COLUMN provider text;

