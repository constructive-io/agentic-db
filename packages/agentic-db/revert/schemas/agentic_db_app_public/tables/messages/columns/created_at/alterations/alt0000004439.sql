-- Revert: schemas/agentic_db_app_public/tables/messages/columns/created_at/alterations/alt0000004439


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN created_at DROP NOT NULL;


