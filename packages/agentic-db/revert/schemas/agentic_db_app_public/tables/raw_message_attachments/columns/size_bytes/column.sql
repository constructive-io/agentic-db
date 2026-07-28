-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/size_bytes/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN size_bytes RESTRICT;


