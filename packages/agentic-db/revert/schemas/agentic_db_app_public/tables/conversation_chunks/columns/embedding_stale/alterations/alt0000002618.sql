-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding_stale/alterations/alt0000002618


ALTER TABLE agentic_db_app_public.conversation_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


