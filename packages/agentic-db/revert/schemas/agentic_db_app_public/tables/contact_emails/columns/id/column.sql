-- Revert: schemas/agentic_db_app_public/tables/contact_emails/columns/id/column


ALTER TABLE agentic_db_app_public.contact_emails 
  DROP COLUMN id RESTRICT;


