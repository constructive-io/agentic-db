-- Deploy: schemas/agent_db_app_public/tables/email_accounts/columns/email/alterations/alt0000004588
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/email/column
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/updated_at/alterations/alt0000004587


ALTER TABLE "agent_db_app_public".email_accounts 
  ALTER COLUMN email SET NOT NULL;

