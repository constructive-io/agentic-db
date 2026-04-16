-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/updated_at/alterations/alt0000000149


ALTER TABLE agentic_db_app_public.contact_emails 
  ALTER COLUMN updated_at DROP NOT NULL;


