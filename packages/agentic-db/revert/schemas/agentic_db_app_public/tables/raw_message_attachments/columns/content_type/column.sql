-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/content_type/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP COLUMN content_type RESTRICT;


