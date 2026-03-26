-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/email/alterations/alt0000001913


ALTER TABLE "agentic_db_app_public".raw_contact_emails 
  ALTER COLUMN email DROP NOT NULL;


