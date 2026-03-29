-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversation_id/alterations/alt0000005717


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ALTER COLUMN conversation_id DROP NOT NULL;


