-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.conversation_chunks 
  DROP COLUMN embedding RESTRICT;


