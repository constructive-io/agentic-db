-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/created_at/alterations/alt0000004065


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ALTER COLUMN created_at DROP NOT NULL;


