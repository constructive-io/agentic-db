-- Deploy: schemas/agentic_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".messages 
  ADD CONSTRAINT messages_email_account_id_fkey 
    FOREIGN KEY(email_account_id) 
    REFERENCES "agentic_db_app_public".email_accounts (id) 
    ON DELETE CASCADE;

