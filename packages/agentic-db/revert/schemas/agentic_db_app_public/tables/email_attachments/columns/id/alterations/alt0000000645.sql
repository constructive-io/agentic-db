-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/id/alterations/alt0000000645


ALTER TABLE agentic_db_app_public.email_attachments 
  ALTER COLUMN id DROP NOT NULL;


