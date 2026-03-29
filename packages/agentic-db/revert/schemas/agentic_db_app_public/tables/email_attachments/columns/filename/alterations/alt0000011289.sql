-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/filename/alterations/alt0000011289


ALTER TABLE agentic_db_app_public.email_attachments 
  ALTER COLUMN filename DROP NOT NULL;


