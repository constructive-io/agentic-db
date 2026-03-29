-- Revert: schemas/agentic_db_app_public/tables/messages/columns/content/alterations/alt0000003795


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN content DROP NOT NULL;


