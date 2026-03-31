-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/raw_contact_id/column


ALTER TABLE agentic_db_app_public.raw_contact_emails 
  DROP COLUMN raw_contact_id RESTRICT;


