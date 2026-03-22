-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/embedding_stale/alterations/alt0000002591


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN embedding_stale DROP NOT NULL;


