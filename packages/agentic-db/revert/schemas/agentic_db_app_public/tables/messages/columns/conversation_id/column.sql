-- Revert: schemas/agentic_db_app_public/tables/messages/columns/conversation_id/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN conversation_id RESTRICT;


