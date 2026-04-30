-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/id/alterations/alt0000000713


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ALTER COLUMN id DROP NOT NULL;


