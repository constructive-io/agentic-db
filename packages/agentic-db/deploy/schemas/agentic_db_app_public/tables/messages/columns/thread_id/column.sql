-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/thread_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/email_account_id/column


ALTER TABLE "agentic_db_app_public".messages 
  ADD COLUMN thread_id text;

