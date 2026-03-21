-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/columns/provider/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/email_accounts/columns/email/alterations/alt0000004434


ALTER TABLE agentic_db_app_public.email_accounts 
  ADD COLUMN provider text;

