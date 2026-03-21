-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/updated_at/alterations/alt0000004276


ALTER TABLE agentic_db_app_public.chat_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


