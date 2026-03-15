-- Revert: schemas/agent_db_app_public/tables/email_accounts/columns/id/alterations/alt0000004581


ALTER TABLE "agent_db_app_public".email_accounts 
  ALTER COLUMN id DROP NOT NULL;


