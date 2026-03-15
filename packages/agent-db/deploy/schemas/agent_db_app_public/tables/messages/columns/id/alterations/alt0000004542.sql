-- Deploy: schemas/agent_db_app_public/tables/messages/columns/id/alterations/alt0000004542
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/id/column
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent_db_app_public".messages 
  ALTER COLUMN id SET NOT NULL;

