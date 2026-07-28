-- Revert: schemas/agentic_db_app_public/tables/raw_message_attachments/constraints/raw_message_attachments_pkey/constraint


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  DROP CONSTRAINT raw_message_attachments_pkey;


