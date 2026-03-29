-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/source/column


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  DROP COLUMN source RESTRICT;


