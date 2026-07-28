-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/filename/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN filename RESTRICT;


