-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/columns/sync_state/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/provider/column


ALTER TABLE "agentic_db_app_public".email_accounts 
  ADD COLUMN sync_state jsonb;

