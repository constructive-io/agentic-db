-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/raw_message_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ALTER COLUMN raw_message_id DROP NOT NULL;


