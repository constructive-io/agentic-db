-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/raw_message_id/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN raw_message_id RESTRICT;


