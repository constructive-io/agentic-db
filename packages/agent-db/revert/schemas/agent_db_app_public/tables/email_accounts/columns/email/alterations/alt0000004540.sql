-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/email/alterations/alt0000004540


ALTER TABLE "agent_db_app_public".email_accounts 
  ALTER COLUMN email DROP NOT NULL;


