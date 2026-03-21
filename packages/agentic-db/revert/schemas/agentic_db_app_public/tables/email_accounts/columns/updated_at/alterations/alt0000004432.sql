-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/updated_at/alterations/alt0000004432


ALTER TABLE agentic_db_app_public.email_accounts 
  ALTER COLUMN updated_at DROP NOT NULL;


