-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/created_at/column


ALTER TABLE agentic_db_app_public.contact_emails 
  DROP COLUMN created_at RESTRICT;


