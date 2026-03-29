-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/message_id/column


ALTER TABLE agentic_db_app_public.messages_chunks 
  DROP COLUMN message_id RESTRICT;


