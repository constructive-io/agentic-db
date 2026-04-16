-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/raw_contact_id/alterations/alt0000000635


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  ALTER COLUMN raw_contact_id DROP NOT NULL;


