-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/id/alterations/alt0000002441


ALTER TABLE "agentic_db_app_public".email_accounts 
  ALTER COLUMN id DROP NOT NULL;


