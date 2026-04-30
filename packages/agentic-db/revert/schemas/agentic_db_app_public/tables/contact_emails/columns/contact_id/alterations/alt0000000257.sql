-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/contact_id/alterations/alt0000000257


ALTER TABLE agentic_db_app_public.contact_emails 
  ALTER COLUMN contact_id DROP NOT NULL;


