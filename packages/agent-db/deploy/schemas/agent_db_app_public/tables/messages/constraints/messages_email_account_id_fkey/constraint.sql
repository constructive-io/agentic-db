-- Deploy: schemas/agent_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/embedding/column


ALTER TABLE agent_db_app_public.messages 
  ADD CONSTRAINT messages_email_account_id_fkey 
    FOREIGN KEY(email_account_id) 
    REFERENCES agent_db_app_public.email_accounts (id) 
    ON DELETE CASCADE;

