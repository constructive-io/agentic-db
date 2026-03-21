-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/content/alterations/alt0000004546


ALTER TABLE agentic_db_app_public.message_chunks 
  ALTER COLUMN content DROP NOT NULL;


