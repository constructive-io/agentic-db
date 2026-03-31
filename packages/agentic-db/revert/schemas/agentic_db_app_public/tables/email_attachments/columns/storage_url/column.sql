-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/storage_url/column


ALTER TABLE agentic_db_app_public.email_attachments 
  DROP COLUMN storage_url RESTRICT;


