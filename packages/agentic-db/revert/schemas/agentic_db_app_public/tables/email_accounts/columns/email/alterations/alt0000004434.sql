-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/email/alterations/alt0000004434


ALTER TABLE agentic_db_app_public.email_accounts 
  ALTER COLUMN email DROP NOT NULL;


