-- Revert: schemas/agentic_db_app_public/tables/email_attachments/columns/provider_attachment_id/column


ALTER TABLE agentic_db_app_public.email_attachments 
  DROP COLUMN provider_attachment_id RESTRICT;


