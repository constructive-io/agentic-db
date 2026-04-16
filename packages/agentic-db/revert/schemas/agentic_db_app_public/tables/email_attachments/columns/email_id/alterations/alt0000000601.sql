-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/email_id/alterations/alt0000000601


ALTER TABLE agentic_db_app_public.email_attachments 
  ALTER COLUMN email_id DROP NOT NULL;


