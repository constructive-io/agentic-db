-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/created_at/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN created_at RESTRICT;


