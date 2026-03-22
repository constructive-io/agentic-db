-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.conversation_chunks 
  DROP COLUMN content RESTRICT;


