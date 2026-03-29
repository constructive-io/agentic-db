-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.messages_chunks 
  DROP COLUMN updated_at RESTRICT;


