-- Deploy: schemas/agent_db_app_public/tables/email_accounts/columns/provider/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/email/alterations/alt0000001370


ALTER TABLE agent_db_app_public.email_accounts 
  ADD COLUMN provider text;

