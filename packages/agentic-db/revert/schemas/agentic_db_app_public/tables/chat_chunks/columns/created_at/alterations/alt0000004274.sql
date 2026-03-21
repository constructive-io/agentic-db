-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/created_at/alterations/alt0000004274


ALTER TABLE agentic_db_app_public.chat_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


