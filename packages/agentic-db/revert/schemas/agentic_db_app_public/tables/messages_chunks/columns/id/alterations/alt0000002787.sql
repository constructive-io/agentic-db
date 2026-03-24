-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/id/alterations/alt0000002787


ALTER TABLE agentic_db_app_public.messages_chunks 
  ALTER COLUMN id DROP NOT NULL;


