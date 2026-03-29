-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversation_id/column


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP COLUMN conversation_id RESTRICT;


