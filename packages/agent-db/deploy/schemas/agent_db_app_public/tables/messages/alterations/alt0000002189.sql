-- Deploy: schemas/agent_db_app_public/tables/messages/alterations/alt0000002189
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent_db_app_public".messages 
  DISABLE ROW LEVEL SECURITY;

