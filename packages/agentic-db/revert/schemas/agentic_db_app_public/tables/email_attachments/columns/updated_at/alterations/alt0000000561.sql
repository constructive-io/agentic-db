-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/updated_at/alterations/alt0000000561


ALTER TABLE agentic_db_app_public.email_attachments 
  ALTER COLUMN updated_at DROP NOT NULL;


