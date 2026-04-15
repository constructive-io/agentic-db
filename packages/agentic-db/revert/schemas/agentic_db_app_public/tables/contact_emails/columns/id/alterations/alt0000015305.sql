-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/id/alterations/alt0000015305


ALTER TABLE agentic_db_app_public.contact_emails 
  ALTER COLUMN id DROP NOT NULL;


