-- Deploy: schemas/agent_db_app_public/tables/messages/columns/email_account_id/alterations/alt0000002892
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/messages/columns/email_account_id/column


ALTER TABLE "agent_db_app_public".messages 
  ALTER COLUMN email_account_id SET NOT NULL;

