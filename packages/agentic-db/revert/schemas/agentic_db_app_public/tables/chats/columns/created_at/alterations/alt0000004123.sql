-- Revert: schemas/agentic_db_app_public/tables/chats/columns/created_at/alterations/alt0000004123


ALTER TABLE agentic_db_app_public.chats 
  ALTER COLUMN created_at DROP NOT NULL;


