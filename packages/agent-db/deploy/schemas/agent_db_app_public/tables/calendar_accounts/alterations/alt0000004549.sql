-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/alterations/alt0000004549
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column


ALTER TABLE "agent_db_app_public".calendar_accounts 
  DISABLE ROW LEVEL SECURITY;

