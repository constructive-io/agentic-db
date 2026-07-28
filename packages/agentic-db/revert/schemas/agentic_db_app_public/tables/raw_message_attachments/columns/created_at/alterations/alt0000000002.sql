-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/created_at/alterations/alt0000000002


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ALTER COLUMN created_at DROP DEFAULT;


