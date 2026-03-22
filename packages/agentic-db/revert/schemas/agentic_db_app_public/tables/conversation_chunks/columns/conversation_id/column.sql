-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/conversation_id/column


ALTER TABLE agentic_db_app_public.conversation_chunks 
  DROP COLUMN conversation_id RESTRICT;


