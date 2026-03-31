-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/updated_at/column


ALTER TABLE agentic_db_app_public.contact_emails 
  DROP COLUMN updated_at RESTRICT;


