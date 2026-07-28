-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ALTER COLUMN id DROP NOT NULL;


