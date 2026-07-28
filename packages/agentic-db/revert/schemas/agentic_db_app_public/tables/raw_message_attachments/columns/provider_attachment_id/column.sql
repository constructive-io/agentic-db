-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/provider_attachment_id/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN provider_attachment_id RESTRICT;


