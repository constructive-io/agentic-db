-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/id/alterations/alt0000004550
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/id/column


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ALTER COLUMN id SET NOT NULL;

