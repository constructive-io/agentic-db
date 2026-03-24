-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.messages_chunks 
  DROP COLUMN created_at RESTRICT;


