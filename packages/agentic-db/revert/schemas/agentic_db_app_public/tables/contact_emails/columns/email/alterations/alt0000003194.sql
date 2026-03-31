-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/email/alterations/alt0000003194


ALTER TABLE agentic_db_app_public.contact_emails 
  ALTER COLUMN email DROP NOT NULL;


