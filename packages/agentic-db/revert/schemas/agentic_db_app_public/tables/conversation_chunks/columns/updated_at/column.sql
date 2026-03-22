-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.conversation_chunks 
  DROP COLUMN updated_at RESTRICT;


