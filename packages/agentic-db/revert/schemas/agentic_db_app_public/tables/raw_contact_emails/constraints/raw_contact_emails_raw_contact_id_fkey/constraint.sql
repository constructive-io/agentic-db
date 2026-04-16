-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/constraints/raw_contact_emails_raw_contact_id_fkey/constraint


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  DROP CONSTRAINT raw_contact_emails_raw_contact_id_fkey;


