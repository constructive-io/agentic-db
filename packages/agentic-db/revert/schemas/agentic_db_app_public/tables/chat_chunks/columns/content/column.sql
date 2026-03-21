-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.chat_chunks 
  DROP COLUMN content RESTRICT;


