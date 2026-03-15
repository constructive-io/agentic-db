-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/email/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/updated_at/alterations/alt0000004604


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ADD COLUMN email text;

