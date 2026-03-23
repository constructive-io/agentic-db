-- Revert: schemas/agentic_db_app_public/tables/messages/columns/embedding_stale/alterations/alt0000003135


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN embedding_stale DROP NOT NULL;


