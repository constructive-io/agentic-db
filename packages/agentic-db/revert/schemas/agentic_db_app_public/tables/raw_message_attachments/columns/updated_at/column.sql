-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/updated_at/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN updated_at RESTRICT;


